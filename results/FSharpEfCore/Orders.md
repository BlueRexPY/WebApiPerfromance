# F# EF Core — Orders Benchmark

**Tested**: 2026-02-23 16:56:15 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8076/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 2,532.90 |
| Avg Latency    | 49.01ms  |
| Max Latency    | 295.17ms |
| Total Requests | 50,838   |
| Transfer/sec   | 26.91MB  |
| Port           | 8076     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 49.01ms | 40.24ms | 295.17ms | 49.20%    |
| Req/Sec | 1.27k   | 652.27  | 4.79k    | 87.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 104.4MiB |
| Memory Limit | 1GiB     |
| Memory %     | 10.19%   |
| CPU %        | 0.03%    |
| PIDs         | 25       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8076/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    49.01ms   40.24ms 295.17ms   49.20%
    Req/Sec     1.27k   652.27     4.79k    87.25%
  50838 requests in 20.07s, 540.10MB read
Requests/sec:   2532.90
Transfer/sec:     26.91MB
```
