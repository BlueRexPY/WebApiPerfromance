# Rust Actix — Orders Benchmark

**Tested**: 2026-02-20 11:31:58 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8005/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 8,736.44 |
| Avg Latency | 28.93ms |
| Max Latency | 626.57ms |
| Total Requests | 174,953 |
| Transfer/sec | 94.90MB |
| Port | 8005 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 28.93ms | 37.82ms | 626.57ms | 83.21% |
| Req/Sec | 4.39k | 0.90k | 6.70k | 85.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 15.66MiB |
| Memory Limit | 1GiB |
| Memory % | 1.53% |
| CPU % | 0.35% |
| PIDs | 16 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8005/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    28.93ms   37.82ms 626.57ms   83.21%
    Req/Sec     4.39k     0.90k    6.70k    85.75%
  174953 requests in 20.03s, 1.86GB read
Requests/sec:   8736.44
Transfer/sec:     94.90MB
```
