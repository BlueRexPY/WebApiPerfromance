# Rust Actix — Orders Benchmark

**Tested**: 2026-02-20 03:19:39 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8005/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 8,495.25 |
| Avg Latency | 28.42ms |
| Max Latency | 453.51ms |
| Total Requests | 170,393 |
| Transfer/sec | 92.28MB |
| Port | 8005 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 28.42ms | 33.73ms | 453.51ms | 80.33% |
| Req/Sec | 4.27k | 0.86k | 8.19k | 84.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 18.82MiB |
| Memory Limit | 1GiB |
| Memory % | 1.84% |
| CPU % | 0.36% |
| PIDs | 16 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8005/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    28.42ms   33.73ms 453.51ms   80.33%
    Req/Sec     4.27k     0.86k    8.19k    84.75%
  170393 requests in 20.06s, 1.81GB read
Requests/sec:   8495.25
Transfer/sec:     92.28MB
```
