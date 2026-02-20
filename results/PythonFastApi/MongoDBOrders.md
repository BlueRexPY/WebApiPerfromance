# Python FastAPI — MongoDB Orders Benchmark

**Tested**: 2026-02-19 07:33:19 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8004/mongodb/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,393.89 |
| Avg Latency | 86.28ms |
| Max Latency | 318.42ms |
| Total Requests | 27,908 |
| Transfer/sec | 15.11MB |
| Port | 8004 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 86.28ms | 39.61ms | 318.42ms | 71.29% |
| Req/Sec | 700.36 | 209.81 | 1.35k | 72.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 254.6MiB |
| Memory Limit | 1GiB |
| Memory % | 24.86% |
| CPU % | 1.02% |
| PIDs | 158 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8004/mongodb/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    86.28ms   39.61ms 318.42ms   71.29%
    Req/Sec   700.36    209.81     1.35k    72.00%
  27908 requests in 20.02s, 302.43MB read
Requests/sec:   1393.89
Transfer/sec:     15.11MB
```
