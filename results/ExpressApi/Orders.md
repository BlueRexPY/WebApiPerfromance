# Express API — Orders Benchmark

**Tested**: 2026-02-18 02:41:53 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8014/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,198.75 |
| Avg Latency    | 41.46ms  |
| Max Latency    | 963.49ms |
| Total Requests | 63,992   |
| Transfer/sec   | 34.33MB  |
| Port           | 8014     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 41.46ms | 46.34ms | 963.49ms | 98.54%    |
| Req/Sec | 1.61k   | 150.13  | 1.87k    | 80.75%    |

## Resource Usage

| Metric       | Value   |
| ------------ | ------- |
| Memory Usage | 47.3MiB |
| Memory Limit | 1GiB    |
| Memory %     | 4.62%   |
| CPU %        | 0.03%   |
| PIDs         | 11      |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8014/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    41.46ms   46.34ms 963.49ms   98.54%
    Req/Sec     1.61k   150.13     1.87k    80.75%
  63992 requests in 20.01s, 686.68MB read
Requests/sec:   3198.75
Transfer/sec:     34.33MB
```
