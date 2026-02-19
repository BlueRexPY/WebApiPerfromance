# Bun API — PostgreSQL Orders Benchmark

**Tested**: 2026-02-19 07:01:42 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/postgresql/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 14,602.34 |
| Avg Latency | 8.21ms |
| Max Latency | 19.53ms |
| Total Requests | 292,062 |
| Transfer/sec | 155.83MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 8.21ms | 622.03us | 19.53ms | 87.07% |
| Req/Sec | 7.34k | 271.00 | 7.88k | 68.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 38.65MiB |
| Memory Limit | 1GiB |
| Memory % | 3.77% |
| CPU % | 1.18% |
| PIDs | 18 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/postgresql/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     8.21ms  622.03us  19.53ms   87.07%
    Req/Sec     7.34k   271.00     7.88k    68.50%
  292062 requests in 20.00s, 3.04GB read
Requests/sec:  14602.34
Transfer/sec:    155.83MB
```
