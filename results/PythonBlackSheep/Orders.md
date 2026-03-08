# Python BlackSheep — Orders Benchmark

**Tested**: 2026-03-08 22:52:09 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8097/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 4,211.39 |
| Avg Latency    | 31.25ms  |
| Max Latency    | 156.88ms |
| Total Requests | 84,248   |
| Transfer/sec   | 45.81MB  |
| Port           | 8097     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 31.25ms | 24.26ms | 156.88ms | 70.39%    |
| Req/Sec | 2.12k   | 572.96  | 3.23k    | 64.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 167.3MiB |
| Memory Limit | 1GiB     |
| Memory %     | 16.34%   |
| CPU %        | 0.57%    |
| PIDs         | 26       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8097/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    31.25ms   24.26ms 156.88ms   70.39%
    Req/Sec     2.12k   572.96     3.23k    64.00%
  84248 requests in 20.00s, 0.90GB read
Requests/sec:   4211.39
Transfer/sec:     45.81MB
```
