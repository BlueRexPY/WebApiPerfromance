# F# .NET AOT — Orders Benchmark

**Tested**: 2026-02-23 16:55:17 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8020/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 8,228.84 |
| Avg Latency    | 19.39ms  |
| Max Latency    | 93.36ms  |
| Total Requests | 164,780  |
| Transfer/sec   | 88.21MB  |
| Port           | 8020     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 19.39ms | 18.82ms | 93.36ms | 80.09%    |
| Req/Sec | 4.14k   | 1.26k   | 9.56k   | 74.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 58.41MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.70%    |
| CPU %        | 0.03%    |
| PIDs         | 20       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8020/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    19.39ms   18.82ms  93.36ms   80.09%
    Req/Sec     4.14k     1.26k    9.56k    74.00%
  164780 requests in 20.02s, 1.72GB read
Requests/sec:   8228.84
Transfer/sec:     88.21MB
```
