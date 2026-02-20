# .NET AOT — MongoDB Orders Benchmark

**Tested**: 2026-02-19 07:41:51 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8013/mongodb/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 5,557.38\* |
| Avg Latency    | 22.79ms    |
| Max Latency    | 89.01ms    |
| Total Requests | 111,248    |
| Transfer/sec   | 602.41KB   |
| Port           | 8013       |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 22.79ms | 12.21ms | 89.01ms | 86.61%    |
| Req/Sec | 2.79k   | 584.15  | 4.20k   | 74.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 30.25MiB |
| Memory Limit | 1GiB     |
| Memory %     | 2.95%    |
| CPU %        | 0.02%    |
| PIDs         | 20       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8013/mongodb/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    22.79ms   12.21ms  89.01ms   86.61%
    Req/Sec     2.79k   584.15     4.20k    74.25%
  111248 requests in 20.02s, 11.78MB read
  Non-2xx or 3xx responses: 111248
Requests/sec:   5557.38
Transfer/sec:    602.41KB
```
