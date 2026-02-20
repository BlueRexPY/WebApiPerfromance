# F# AOT — Orders Benchmark

**Tested**: 2026-02-20 03:12:07 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8020/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 8,718.01 |
| Avg Latency | 18.82ms |
| Max Latency | 97.55ms |
| Total Requests | 174,505 |
| Transfer/sec | 93.45MB |
| Port | 8020 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 18.82ms | 18.77ms | 97.55ms | 81.14% |
| Req/Sec | 4.38k | 1.58k | 11.78k | 78.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 51.04MiB |
| Memory Limit | 1GiB |
| Memory % | 4.98% |
| CPU % | 0.02% |
| PIDs | 20 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8020/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    18.82ms   18.77ms  97.55ms   81.14%
    Req/Sec     4.38k     1.58k   11.78k    78.25%
  174505 requests in 20.02s, 1.83GB read
Requests/sec:   8718.01
Transfer/sec:     93.45MB
```
