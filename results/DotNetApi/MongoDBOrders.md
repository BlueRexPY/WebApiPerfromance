# .NET API — MongoDB Orders Benchmark

**Tested**: 2026-02-19 06:47:45 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/mongodb/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,927.45\* |
| Avg Latency | 32.01ms |
| Max Latency | 193.26ms |
| Total Requests | 78,668 |
| Transfer/sec | 425.73KB |
| Port | 8001 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 32.01ms | 20.01ms | 193.26ms | 74.88% |
| Req/Sec | 1.97k | 513.98 | 3.18k | 65.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 86.09MiB |
| Memory Limit | 1GiB |
| Memory % | 8.41% |
| CPU % | 0.01% |
| PIDs | 26 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/mongodb/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    32.01ms   20.01ms 193.26ms   74.88%
    Req/Sec     1.97k   513.98     3.18k    65.00%
  78668 requests in 20.03s, 8.33MB read
  Non-2xx or 3xx responses: 78668
Requests/sec:   3927.45
Transfer/sec:    425.73KB
```
