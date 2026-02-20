# JS Express — Orders Benchmark

**Tested**: 2026-02-20 11:16:22 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8014/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,420.65 |
| Avg Latency | 38.69ms |
| Max Latency | 634.20ms |
| Total Requests | 68,439 |
| Transfer/sec | 36.71MB |
| Port | 8014 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 38.69ms | 37.69ms | 634.20ms | 98.09% |
| Req/Sec | 1.72k | 253.48 | 1.96k | 95.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 49.36MiB |
| Memory Limit | 1GiB |
| Memory % | 4.82% |
| CPU % | 0.01% |
| PIDs | 11 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8014/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    38.69ms   37.69ms 634.20ms   98.09%
    Req/Sec     1.72k   253.48     1.96k    95.75%
  68439 requests in 20.01s, 734.40MB read
Requests/sec:   3420.65
Transfer/sec:     36.71MB
```
