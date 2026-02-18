# .NET API — Hello World Benchmark

**Tested**: 2026-02-18 03:19:31 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 79,500.61 |
| Avg Latency | 4.96ms |
| Max Latency | 85.37ms |
| Total Requests | 1,590,473 |
| Transfer/sec | 14.10MB |
| Port | 8001 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 4.96ms | 11.44ms | 85.37ms | 91.71% |
| Req/Sec | 39.96k | 20.31k | 97.40k | 66.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 30.9MiB |
| Memory Limit | 1GiB |
| Memory % | 3.02% |
| CPU % | 2.98% |
| PIDs | 24 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.96ms   11.44ms  85.37ms   91.71%
    Req/Sec    39.96k    20.31k   97.40k    66.00%
  1590473 requests in 20.01s, 282.12MB read
Requests/sec:  79500.61
Transfer/sec:     14.10MB
```
