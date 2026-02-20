# Go Fiber — PostgreSQL Orders Benchmark

**Tested**: 2026-02-19 07:36:43 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8008/postgresql/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 5,436.78 |
| Avg Latency | 34.54ms |
| Max Latency | 611.88ms |
| Total Requests | 108,857 |
| Transfer/sec | 59.59MB |
| Port | 8008 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 34.54ms | 45.72ms | 611.88ms | 85.80% |
| Req/Sec | 2.73k | 0.96k | 6.08k | 78.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 61.02MiB |
| Memory Limit | 1GiB |
| Memory % | 5.96% |
| CPU % | 0.02% |
| PIDs | 47 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8008/postgresql/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    34.54ms   45.72ms 611.88ms   85.80%
    Req/Sec     2.73k     0.96k    6.08k    78.50%
  108857 requests in 20.02s, 1.17GB read
Requests/sec:   5436.78
Transfer/sec:     59.59MB
```
