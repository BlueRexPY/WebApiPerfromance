# .NET API — PostgreSQL Orders Benchmark

**Tested**: 2026-02-19 07:29:10 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/postgresql/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 11,396.13 |
| Avg Latency | 18.14ms |
| Max Latency | 93.58ms |
| Total Requests | 228,418 |
| Transfer/sec | 121.07MB |
| Port | 8001 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 18.14ms | 20.67ms | 93.58ms | 80.71% |
| Req/Sec | 5.73k | 1.66k | 10.89k | 61.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 61.81MiB |
| Memory Limit | 1GiB |
| Memory % | 6.04% |
| CPU % | 0.01% |
| PIDs | 27 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/postgresql/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    18.14ms   20.67ms  93.58ms   80.71%
    Req/Sec     5.73k     1.66k   10.89k    61.75%
  228418 requests in 20.04s, 2.37GB read
Requests/sec:  11396.13
Transfer/sec:    121.07MB
```
