# Bun API — PostgreSQL Orders Benchmark

**Tested**: 2026-02-19 07:30:41 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/postgresql/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 14,964.47 |
| Avg Latency | 8.01ms |
| Max Latency | 23.31ms |
| Total Requests | 299,438 |
| Transfer/sec | 159.70MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 8.01ms | 589.36us | 23.31ms | 92.60% |
| Req/Sec | 7.52k | 247.65 | 7.97k | 58.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 42.16MiB |
| Memory Limit | 1GiB |
| Memory % | 4.12% |
| CPU % | 0.83% |
| PIDs | 17 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/postgresql/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     8.01ms  589.36us  23.31ms   92.60%
    Req/Sec     7.52k   247.65     7.97k    58.00%
  299438 requests in 20.01s, 3.12GB read
Requests/sec:  14964.47
Transfer/sec:    159.70MB
```
