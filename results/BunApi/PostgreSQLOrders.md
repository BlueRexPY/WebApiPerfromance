# Bun API — PostgreSQL Orders Benchmark

**Tested**: 2026-02-19 06:51:56 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/postgresql/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 14,966.10 |
| Avg Latency | 8.02ms |
| Max Latency | 30.99ms |
| Total Requests | 299,364 |
| Transfer/sec | 159.71MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 8.02ms | 656.57us | 30.99ms | 94.28% |
| Req/Sec | 7.52k | 228.08 | 7.90k | 77.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 38.77MiB |
| Memory Limit | 1GiB |
| Memory % | 3.79% |
| CPU % | 1.06% |
| PIDs | 18 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/postgresql/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     8.02ms  656.57us  30.99ms   94.28%
    Req/Sec     7.52k   228.08     7.90k    77.50%
  299364 requests in 20.00s, 3.12GB read
Requests/sec:  14966.10
Transfer/sec:    159.71MB
```
