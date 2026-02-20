# C# Carter AOT — Orders Benchmark

**Tested**: 2026-02-20 06:00:23 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8036/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 8,850.36 |
| Avg Latency | 19.94ms |
| Max Latency | 96.12ms |
| Total Requests | 177,465 |
| Transfer/sec | 94.03MB |
| Port | 8036 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 19.94ms | 20.96ms | 96.12ms | 80.64% |
| Req/Sec | 4.45k | 1.69k | 8.95k | 73.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 29.59MiB |
| Memory Limit | 1GiB |
| Memory % | 2.89% |
| CPU % | 0.03% |
| PIDs | 20 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8036/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    19.94ms   20.96ms  96.12ms   80.64%
    Req/Sec     4.45k     1.69k    8.95k    73.25%
  177465 requests in 20.05s, 1.84GB read
Requests/sec:   8850.36
Transfer/sec:     94.03MB
```
