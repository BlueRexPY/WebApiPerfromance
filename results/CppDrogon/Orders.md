# C++ Drogon — Orders Benchmark

**Tested**: 2026-02-18 03:45:08 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8017/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 12,226.54\* |
| Avg Latency | 25.02ms |
| Max Latency | 97.03ms |
| Total Requests | 244,705 |
| Transfer/sec | 3.01MB |
| Port | 8017 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 25.02ms | 29.72ms | 97.03ms | 77.36% |
| Req/Sec | 6.15k | 2.16k | 13.08k | 74.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 62.34MiB |
| Memory Limit | 1GiB |
| Memory % | 6.09% |
| CPU % | 23.10% |
| PIDs | 47 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8017/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    25.02ms   29.72ms  97.03ms   77.36%
    Req/Sec     6.15k     2.16k   13.08k    74.75%
  244705 requests in 20.01s, 60.21MB read
  Non-2xx or 3xx responses: 244705
Requests/sec:  12226.54
Transfer/sec:      3.01MB
```
