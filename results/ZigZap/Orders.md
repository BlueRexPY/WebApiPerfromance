# Zig zap — Orders Benchmark

**Tested**: 2026-02-20 05:05:09 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8024/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 8,331.74 |
| Avg Latency | 27.98ms |
| Max Latency | 106.42ms |
| Total Requests | 167,054 |
| Transfer/sec | 90.92MB |
| Port | 8024 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 27.98ms | 31.68ms | 106.42ms | 75.45% |
| Req/Sec | 4.19k | 457.44 | 5.39k | 72.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 35.02MiB |
| Memory Limit | 1GiB |
| Memory % | 3.42% |
| CPU % | 0.92% |
| PIDs | 33 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8024/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    27.98ms   31.68ms 106.42ms   75.45%
    Req/Sec     4.19k   457.44     5.39k    72.50%
  167054 requests in 20.05s, 1.78GB read
Requests/sec:   8331.74
Transfer/sec:     90.92MB
```
