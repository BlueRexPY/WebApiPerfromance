# .NET API — PostgreSQL Orders Benchmark

**Tested**: 2026-02-19 06:47:19 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/postgresql/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 13,271.98 |
| Avg Latency | 17.36ms |
| Max Latency | 90.61ms |
| Total Requests | 265,587 |
| Transfer/sec | 141.00MB |
| Port | 8001 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 17.36ms | 20.61ms | 90.61ms | 80.73% |
| Req/Sec | 6.67k | 1.72k | 9.88k | 67.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 69.98MiB |
| Memory Limit | 1GiB |
| Memory % | 6.83% |
| CPU % | 0.02% |
| PIDs | 28 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/postgresql/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    17.36ms   20.61ms  90.61ms   80.73%
    Req/Sec     6.67k     1.72k    9.88k    67.25%
  265587 requests in 20.01s, 2.76GB read
Requests/sec:  13271.98
Transfer/sec:    141.00MB
```
