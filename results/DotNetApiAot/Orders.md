# .NET AOT — Orders Benchmark

**Tested**: 2026-02-18 03:33:03 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8013/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 12,964.12 |
| Avg Latency | 14.66ms |
| Max Latency | 89.68ms |
| Total Requests | 259,464 |
| Transfer/sec | 137.73MB |
| Port | 8013 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 14.66ms | 16.50ms | 89.68ms | 82.43% |
| Req/Sec | 6.52k | 1.40k | 9.16k | 70.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 46.18MiB |
| Memory Limit | 1GiB |
| Memory % | 4.51% |
| CPU % | 0.02% |
| PIDs | 20 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8013/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    14.66ms   16.50ms  89.68ms   82.43%
    Req/Sec     6.52k     1.40k    9.16k    70.25%
  259464 requests in 20.01s, 2.69GB read
Requests/sec:  12964.12
Transfer/sec:    137.73MB
```
