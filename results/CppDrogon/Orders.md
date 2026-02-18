# C++ Drogon — Orders Benchmark

**Tested**: 2026-02-18 02:58:53 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8017/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 18,555.21\* |
| Avg Latency | 21.95ms |
| Max Latency | 90.52ms |
| Total Requests | 371,777 |
| Transfer/sec | 4.57MB |
| Port | 8017 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 21.95ms | 27.54ms | 90.52ms | 78.45% |
| Req/Sec | 9.32k | 2.53k | 24.58k | 70.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 64.57MiB |
| Memory Limit | 1GiB |
| Memory % | 6.31% |
| CPU % | 22.55% |
| PIDs | 35 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8017/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    21.95ms   27.54ms  90.52ms   78.45%
    Req/Sec     9.32k     2.53k   24.58k    70.25%
  371777 requests in 20.04s, 91.47MB read
  Non-2xx or 3xx responses: 371777
Requests/sec:  18555.21
Transfer/sec:      4.57MB
```
