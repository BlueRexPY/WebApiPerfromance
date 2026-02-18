# C++ Drogon — Orders Benchmark

**Tested**: 2026-02-18 03:14:24 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8017/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 14,947.58\* |
| Avg Latency | 23.54ms |
| Max Latency | 92.20ms |
| Total Requests | 299,670 |
| Transfer/sec | 3.68MB |
| Port | 8017 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 23.54ms | 28.73ms | 92.20ms | 77.75% |
| Req/Sec | 7.51k | 1.54k | 11.51k | 81.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 54.71MiB |
| Memory Limit | 1GiB |
| Memory % | 5.34% |
| CPU % | 23.85% |
| PIDs | 47 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8017/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    23.54ms   28.73ms  92.20ms   77.75%
    Req/Sec     7.51k     1.54k   11.51k    81.00%
  299670 requests in 20.05s, 73.73MB read
  Non-2xx or 3xx responses: 299670
Requests/sec:  14947.58
Transfer/sec:      3.68MB
```
