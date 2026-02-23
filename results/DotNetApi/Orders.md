# C# .NET API — Orders Benchmark

**Tested**: 2026-02-23 16:44:36 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 8,885.70 |
| Avg Latency    | 20.70ms  |
| Max Latency    | 100.33ms |
| Total Requests | 177,834  |
| Transfer/sec   | 94.40MB  |
| Port           | 8001     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 20.70ms | 22.08ms | 100.33ms | 80.20%    |
| Req/Sec | 4.47k   | 1.49k   | 8.77k    | 68.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 70.48MiB |
| Memory Limit | 1GiB     |
| Memory %     | 6.88%    |
| CPU %        | 0.03%    |
| PIDs         | 25       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    20.70ms   22.08ms 100.33ms   80.20%
    Req/Sec     4.47k     1.49k    8.77k    68.25%
  177834 requests in 20.01s, 1.85GB read
Requests/sec:   8885.70
Transfer/sec:     94.40MB
```
