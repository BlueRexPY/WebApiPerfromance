# .NET AOT — PostgreSQL Orders Benchmark

**Tested**: 2026-02-19 07:41:25 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8013/postgresql/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 9,842.61 |
| Avg Latency | 18.80ms |
| Max Latency | 98.81ms |
| Total Requests | 197,123 |
| Transfer/sec | 104.57MB |
| Port | 8013 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 18.80ms | 20.33ms | 98.81ms | 80.87% |
| Req/Sec | 4.95k | 1.66k | 9.63k | 65.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 43.24MiB |
| Memory Limit | 1GiB |
| Memory % | 4.22% |
| CPU % | 0.02% |
| PIDs | 22 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8013/postgresql/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    18.80ms   20.33ms  98.81ms   80.87%
    Req/Sec     4.95k     1.66k    9.63k    65.50%
  197123 requests in 20.03s, 2.05GB read
Requests/sec:   9842.61
Transfer/sec:    104.57MB
```
