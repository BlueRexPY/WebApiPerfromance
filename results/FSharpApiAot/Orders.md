# F# .NET AOT — Orders Benchmark

**Tested**: 2026-02-21 07:17:32 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8020/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 8,347.39 |
| Avg Latency    | 19.35ms  |
| Max Latency    | 93.80ms  |
| Total Requests | 167,313  |
| Transfer/sec   | 89.48MB  |
| Port           | 8020     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 19.35ms | 19.03ms | 93.80ms | 80.52%    |
| Req/Sec | 4.20k   | 1.37k   | 8.98k   | 77.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 49.88MiB |
| Memory Limit | 1GiB     |
| Memory %     | 4.87%    |
| CPU %        | 0.03%    |
| PIDs         | 20       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8020/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    19.35ms   19.03ms  93.80ms   80.52%
    Req/Sec     4.20k     1.37k    8.98k    77.25%
  167313 requests in 20.04s, 1.75GB read
Requests/sec:   8347.39
Transfer/sec:     89.48MB
```
