# .NET API — Orders Benchmark

**Tested**: 2026-02-18 03:19:57 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 10,492.38 |
| Avg Latency | 18.84ms |
| Max Latency | 95.68ms |
| Total Requests | 210,215 |
| Transfer/sec | 111.47MB |
| Port | 8001 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 18.84ms | 21.03ms | 95.68ms | 80.66% |
| Req/Sec | 5.28k | 1.73k | 10.40k | 62.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 55.38MiB |
| Memory Limit | 1GiB |
| Memory % | 5.41% |
| CPU % | 0.96% |
| PIDs | 25 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    18.84ms   21.03ms  95.68ms   80.66%
    Req/Sec     5.28k     1.73k   10.40k    62.25%
  210215 requests in 20.04s, 2.18GB read
Requests/sec:  10492.38
Transfer/sec:    111.47MB
```
