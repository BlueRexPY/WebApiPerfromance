# Go Fiber — MongoDB Orders Benchmark

**Tested**: 2026-02-19 07:37:09 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8008/mongodb/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,249.65 |
| Avg Latency | 54.10ms |
| Max Latency | 304.49ms |
| Total Requests | 45,078 |
| Transfer/sec | 23.91MB |
| Port | 8008 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 54.10ms | 46.65ms | 304.49ms | 55.78% |
| Req/Sec | 1.13k | 275.76 | 2.08k | 77.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 59.02MiB |
| Memory Limit | 1GiB |
| Memory % | 5.76% |
| CPU % | 0.03% |
| PIDs | 47 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8008/mongodb/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    54.10ms   46.65ms 304.49ms   55.78%
    Req/Sec     1.13k   275.76     2.08k    77.75%
  45078 requests in 20.04s, 479.16MB read
Requests/sec:   2249.65
Transfer/sec:     23.91MB
```
