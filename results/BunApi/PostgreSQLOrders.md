# Bun API — PostgreSQL Orders Benchmark

**Tested**: 2026-02-19 06:37:45 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/postgresql/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 14,329.11 |
| Avg Latency | 8.37ms |
| Max Latency | 35.01ms |
| Total Requests | 286,719 |
| Transfer/sec | 152.91MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 8.37ms | 722.60us | 35.01ms | 90.99% |
| Req/Sec | 7.20k | 329.96 | 7.88k | 67.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 72.32MiB |
| Memory Limit | 1GiB |
| Memory % | 7.06% |
| CPU % | 0.63% |
| PIDs | 17 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/postgresql/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     8.37ms  722.60us  35.01ms   90.99%
    Req/Sec     7.20k   329.96     7.88k    67.50%
  286719 requests in 20.01s, 2.99GB read
Requests/sec:  14329.11
Transfer/sec:    152.91MB
```
