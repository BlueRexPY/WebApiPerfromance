# JS NestJS Express Cluster — Orders Benchmark

**Tested**: 2026-02-21 06:10:04 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8045/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 4,094.54 |
| Avg Latency | 31.76ms |
| Max Latency | 833.64ms |
| Total Requests | 81,911 |
| Transfer/sec | 44.20MB |
| Port | 8045 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 31.76ms | 31.74ms | 833.64ms | 97.62% |
| Req/Sec | 2.06k | 302.43 | 2.54k | 80.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 109.9MiB |
| Memory Limit | 1GiB |
| Memory % | 10.74% |
| CPU % | 0.03% |
| PIDs | 29 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8045/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    31.76ms   31.74ms 833.64ms   97.62%
    Req/Sec     2.06k   302.43     2.54k    80.50%
  81911 requests in 20.00s, 0.86GB read
Requests/sec:   4094.54
Transfer/sec:     44.20MB
```
