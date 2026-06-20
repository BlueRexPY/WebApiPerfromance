//! Unified REST + gRPC benchmarking tool.
//!
//! Single binary, two modes, both over HTTP/2, identical methodology.
//! Eliminates the wrk-vs-ghz instrumentation bias.

mod api {
    tonic::include_proto!("api");
}

use std::sync::atomic::{AtomicU64, Ordering};
use std::sync::Arc;
use std::time::{Duration, Instant};

use anyhow::{Context, Result};
use clap::Parser;
use hdrhistogram::Histogram;
use tokio::sync::Semaphore;

// ── CLI ──────────────────────────────────────────────────────────────────────

#[derive(Parser, Debug)]
#[command(name = "bench", about = "Unified REST + gRPC benchmark")]
struct Cli {
    /// Benchmark mode
    #[arg(long, value_enum)]
    mode: Mode,

    /// Target URL (REST: http://host:port/path, gRPC: http://host:port)
    #[arg(long)]
    url: String,

    /// Concurrency level (parallel tasks)
    #[arg(long, short = 'c', default_value = "120")]
    concurrency: usize,

    /// Total requests (including warmup)
    #[arg(long, short = 'n', default_value = "100000")]
    requests: u64,

    /// Service display name for output
    #[arg(long, default_value = "unknown")]
    name: String,

    /// Use TLS (default: plaintext)
    #[arg(long, default_value = "false")]
    tls: bool,
}

#[derive(clap::ValueEnum, Clone, Debug)]
enum Mode {
    Rest,
    Grpc,
}

// ── Shared result type ───────────────────────────────────────────────────────

struct BenchReport {
    name: String,
    mode: Mode,
    rps: f64,
    p50_ms: f64,
    p99_ms: f64,
    p999_ms: f64,
    #[allow(dead_code)]
    total_measured: u64,
    errors: u64,
}

// ── Benchmark engine ─────────────────────────────────────────────────────────

/// Run the REST benchmark.
async fn bench_rest(cli: &Cli) -> Result<BenchReport> {
    let mut builder = reqwest::Client::builder().timeout(Duration::from_secs(30));

    // HTTP/2 only with TLS; plaintext uses HTTP/1.1 (same as wrk)
    if cli.tls {
        builder = builder.http2_prior_knowledge();
    }

    let client = builder.build()?;

    let warmup = cli.requests / 10;
    let measured = cli.requests - warmup;

    // Warmup (discarded)
    run_concurrent(
        &client,
        &cli.url,
        warmup,
        cli.concurrency,
        None, // no histogram during warmup
    )
    .await?;

    // Measurement
    let histogram = Arc::new(tokio::sync::Mutex::new(
        Histogram::<u64>::new(3).context("failed to create histogram")?,
    ));
    let errors = Arc::new(AtomicU64::new(0));

    let t0 = Instant::now();
    run_concurrent(
        &client,
        &cli.url,
        measured,
        cli.concurrency,
        Some((histogram.clone(), errors.clone())),
    )
    .await?;
    let elapsed = t0.elapsed();

    let total = measured - errors.load(Ordering::Relaxed);
    let rps = if elapsed.as_secs_f64() > 0.0 {
        total as f64 / elapsed.as_secs_f64()
    } else {
        0.0
    };

    let hist = histogram.lock().await;
    Ok(BenchReport {
        name: cli.name.clone(),
        mode: Mode::Rest,
        rps,
        p50_ms: hist.value_at_quantile(0.50) as f64 / 1000.0,
        p99_ms: hist.value_at_quantile(0.99) as f64 / 1000.0,
        p999_ms: hist.value_at_quantile(0.999) as f64 / 1000.0,
        total_measured: total,
        errors: errors.load(Ordering::Relaxed),
    })
}

/// Run the gRPC benchmark.
async fn bench_grpc(cli: &Cli) -> Result<BenchReport> {
    use api::api_service_client::ApiServiceClient;

    let channel = tonic::transport::Channel::from_shared(cli.url.clone())?
        .connect()
        .await?;

    let client = ApiServiceClient::new(channel);

    let warmup = cli.requests / 10;
    let measured = cli.requests - warmup;

    // Warmup (discarded)
    run_grpc_concurrent(
        &client,
        warmup,
        cli.concurrency,
        None,
    )
    .await?;

    // Measurement
    let histogram = Arc::new(tokio::sync::Mutex::new(
        Histogram::<u64>::new(3).context("failed to create histogram")?,
    ));
    let errors = Arc::new(AtomicU64::new(0));

    let client = ApiServiceClient::new(
        tonic::transport::Channel::from_shared(cli.url.clone())?
            .connect()
            .await?,
    );

    let t0 = Instant::now();
    run_grpc_concurrent(
        &client,
        measured,
        cli.concurrency,
        Some((histogram.clone(), errors.clone())),
    )
    .await?;
    let elapsed = t0.elapsed();

    let total = measured - errors.load(Ordering::Relaxed);
    let rps = if elapsed.as_secs_f64() > 0.0 {
        total as f64 / elapsed.as_secs_f64()
    } else {
        0.0
    };

    let hist = histogram.lock().await;
    Ok(BenchReport {
        name: cli.name.clone(),
        mode: Mode::Grpc,
        rps,
        p50_ms: hist.value_at_quantile(0.50) as f64 / 1000.0,
        p99_ms: hist.value_at_quantile(0.99) as f64 / 1000.0,
        p999_ms: hist.value_at_quantile(0.999) as f64 / 1000.0,
        total_measured: total,
        errors: errors.load(Ordering::Relaxed),
    })
}

// ── REST concurrent runner ───────────────────────────────────────────────────

async fn run_concurrent(
    client: &reqwest::Client,
    url: &str,
    total: u64,
    concurrency: usize,
    histogram: Option<(Arc<tokio::sync::Mutex<Histogram<u64>>>, Arc<AtomicU64>)>,
) -> Result<()> {
    let sem = Arc::new(Semaphore::new(concurrency));
    let counter = Arc::new(AtomicU64::new(0));
    let url = Arc::new(url.to_string());
    let client = client.clone();

    let per_task = total / concurrency as u64;
    let remainder = total % concurrency as u64;

    let mut handles = Vec::with_capacity(concurrency);

    for i in 0..concurrency {
        let sem = sem.clone();
        let counter = counter.clone();
        let url = url.clone();
        let client = client.clone();
        let hist = histogram.clone();
        let mut my_count = per_task;
        if (i as u64) < remainder {
            my_count += 1;
        }

        let handle = tokio::spawn(async move {
            let _permit = sem.acquire().await.unwrap();

            for _ in 0..my_count {
                let t0 = Instant::now();
                match client.get(url.as_str()).send().await {
                    Ok(resp) => {
                        let lat_us = t0.elapsed().as_micros() as u64;
                        if let Some((ref h, _)) = hist {
                            h.lock().await.record(lat_us).ok();
                        }
                        let _ = resp.bytes().await;
                    }
                    Err(_) => {
                        if let Some((_, ref e)) = hist {
                            e.fetch_add(1, Ordering::Relaxed);
                        }
                    }
                }
                counter.fetch_add(1, Ordering::Relaxed);
            }
        });
        handles.push(handle);
    }

    for h in handles {
        h.await?;
    }

    Ok(())
}

// ── gRPC concurrent runner ───────────────────────────────────────────────────

async fn run_grpc_concurrent(
    client: &api::api_service_client::ApiServiceClient<tonic::transport::Channel>,
    total: u64,
    concurrency: usize,
    histogram: Option<(Arc<tokio::sync::Mutex<Histogram<u64>>>, Arc<AtomicU64>)>,
) -> Result<()> {
    let sem = Arc::new(Semaphore::new(concurrency));
    let counter = Arc::new(AtomicU64::new(0));

    let per_task = total / concurrency as u64;
    let remainder = total % concurrency as u64;

    let mut handles = Vec::with_capacity(concurrency);

    for i in 0..concurrency {
        let sem = sem.clone();
        let counter = counter.clone();
        let hist = histogram.clone();
        let mut client = client.clone();
        let mut my_count = per_task;
        if (i as u64) < remainder {
            my_count += 1;
        }

        let handle = tokio::spawn(async move {
            let _permit = sem.acquire().await.unwrap();

            for _ in 0..my_count {
                let t0 = Instant::now();
                match client
                    .say_hello(api::HelloRequest {})
                    .await
                {
                    Ok(_) => {
                        let lat_us = t0.elapsed().as_micros() as u64;
                        if let Some((ref h, _)) = hist {
                            h.lock().await.record(lat_us).ok();
                        }
                    }
                    Err(_) => {
                        if let Some((_, ref e)) = hist {
                            e.fetch_add(1, Ordering::Relaxed);
                        }
                    }
                }
                counter.fetch_add(1, Ordering::Relaxed);
            }
        });
        handles.push(handle);
    }

    for h in handles {
        h.await?;
    }

    Ok(())
}

// ── Main ─────────────────────────────────────────────────────────────────────

#[tokio::main]
async fn main() -> Result<()> {
    let cli = Cli::parse();

    let report = match cli.mode {
        Mode::Rest => bench_rest(&cli).await?,
        Mode::Grpc => bench_grpc(&cli).await?,
    };

    let mode_label = match report.mode {
        Mode::Rest => "REST",
        Mode::Grpc => "gRPC",
    };

    println!(
        "[{}] {} — RPS: {:.0} | p50: {:.1}ms | p99: {:.1}ms | p999: {:.1}ms",
        mode_label,
        report.name,
        report.rps,
        report.p50_ms,
        report.p99_ms,
        report.p999_ms,
    );

    if report.errors > 0 {
        eprintln!(
            "  ⚠ {} errors ({} %)",
            report.errors,
            report.errors as f64 / cli.requests as f64 * 100.0
        );
    }

    Ok(())
}
