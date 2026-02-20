# JS Bun — Orders Benchmark

**Tested**: 2026-02-20 11:23:46 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 15,455.76 |
| Avg Latency | 7.76ms |
| Max Latency | 25.50ms |
| Total Requests | 309,152 |
| Transfer/sec | 164.94MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 7.76ms | 660.25us | 25.50ms | 95.35% |
| Req/Sec | 7.77k | 260.65 | 8.28k | 72.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 71.47MiB |
| Memory Limit | 1GiB |
| Memory % | 6.98% |
| CPU % | 2.13% |
| PIDs | 16 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     7.76ms  660.25us  25.50ms   95.35%
    Req/Sec     7.77k   260.65     8.28k    72.25%
  309152 requests in 20.00s, 3.22GB read
Requests/sec:  15455.76
Transfer/sec:    164.94MB
```
