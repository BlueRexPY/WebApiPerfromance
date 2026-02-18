# Django API — Orders Benchmark

**Tested**: 2026-02-18 03:36:23 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8016/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,479.11\* |
| Avg Latency | 87.02ms |
| Max Latency | 472.95ms |
| Total Requests | 29,608 |
| Transfer/sec | 16.30MB |
| Port | 8016 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 87.02ms | 60.30ms | 472.95ms | 74.54% |
| Req/Sec | 743.40 | 274.38 | 1.31k | 63.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 167.1MiB |
| Memory Limit | 1GiB |
| Memory % | 16.32% |
| CPU % | 0.10% |
| PIDs | 17 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8016/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    87.02ms   60.30ms 472.95ms   74.54%
    Req/Sec   743.40    274.38     1.31k    63.50%
  29608 requests in 20.02s, 326.32MB read
  Socket errors: connect 0, read 100, write 0, timeout 0
Requests/sec:   1479.11
Transfer/sec:     16.30MB
```
