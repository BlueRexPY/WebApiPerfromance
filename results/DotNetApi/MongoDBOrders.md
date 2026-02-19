# .NET API — MongoDB Orders Benchmark

**Tested**: 2026-02-19 06:36:26 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/mongodb/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 2,902.20\* |
| Avg Latency    | 42.08ms    |
| Max Latency    | 209.74ms   |
| Total Requests | 58,182     |
| Transfer/sec   | 314.59KB   |
| Port           | 8001       |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 42.08ms | 28.51ms | 209.74ms | 65.15%    |
| Req/Sec | 1.46k   | 349.40  | 3.24k    | 77.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 88.54MiB |
| Memory Limit | 1GiB     |
| Memory %     | 8.65%    |
| CPU %        | 0.02%    |
| PIDs         | 26       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/mongodb/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    42.08ms   28.51ms 209.74ms   65.15%
    Req/Sec     1.46k   349.40     3.24k    77.00%
  58182 requests in 20.05s, 6.16MB read
  Non-2xx or 3xx responses: 58182
Requests/sec:   2902.20
Transfer/sec:    314.59KB
```
