# C++ Drogon — Orders Benchmark

**Tested**: 2026-02-18 03:37:28 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8017/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 17,786.40\* |
| Avg Latency | 21.85ms |
| Max Latency | 89.50ms |
| Total Requests | 356,812 |
| Transfer/sec | 4.38MB |
| Port | 8017 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 21.85ms | 27.36ms | 89.50ms | 78.65% |
| Req/Sec | 8.94k | 2.21k | 17.49k | 65.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 62.57MiB |
| Memory Limit | 1GiB |
| Memory % | 6.11% |
| CPU % | 13.49% |
| PIDs | 47 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8017/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    21.85ms   27.36ms  89.50ms   78.65%
    Req/Sec     8.94k     2.21k   17.49k    65.75%
  356812 requests in 20.06s, 87.79MB read
  Non-2xx or 3xx responses: 356812
Requests/sec:  17786.40
Transfer/sec:      4.38MB
```
