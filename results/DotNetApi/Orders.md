# .NET API — Orders Benchmark

**Tested**: 2026-02-20 03:21:11 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 8,193.76 |
| Avg Latency    | 21.65ms  |
| Max Latency    | 102.03ms |
| Total Requests | 164,048  |
| Transfer/sec   | 87.05MB  |
| Port           | 8001     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 21.65ms | 22.51ms | 102.03ms | 79.63%    |
| Req/Sec | 4.12k   | 1.58k   | 10.81k   | 80.25%    |

## Resource Usage

| Metric       | Value   |
| ------------ | ------- |
| Memory Usage | 61.7MiB |
| Memory Limit | 1GiB    |
| Memory %     | 6.02%   |
| CPU %        | 0.03%   |
| PIDs         | 24      |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    21.65ms   22.51ms 102.03ms   79.63%
    Req/Sec     4.12k     1.58k   10.81k    80.25%
  164048 requests in 20.02s, 1.70GB read
Requests/sec:   8193.76
Transfer/sec:     87.05MB
```
