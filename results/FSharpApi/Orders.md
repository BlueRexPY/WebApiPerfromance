# F# .NET API — Orders Benchmark

**Tested**: 2026-02-23 16:54:19 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8019/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 8,107.83 |
| Avg Latency    | 21.66ms  |
| Max Latency    | 95.25ms  |
| Total Requests | 162,566  |
| Transfer/sec   | 86.14MB  |
| Port           | 8019     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 21.66ms | 22.48ms | 95.25ms | 79.80%    |
| Req/Sec | 4.08k   | 1.43k   | 9.10k   | 80.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 57.63MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.63%    |
| CPU %        | 0.04%    |
| PIDs         | 23       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8019/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    21.66ms   22.48ms  95.25ms   79.80%
    Req/Sec     4.08k     1.43k    9.10k    80.25%
  162566 requests in 20.05s, 1.69GB read
Requests/sec:   8107.83
Transfer/sec:     86.14MB
```
