# JS Koa Cluster — Orders Benchmark

**Tested**: 2026-02-21 06:14:47 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8044/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 5,395.38 |
| Avg Latency    | 23.29ms  |
| Max Latency    | 432.50ms |
| Total Requests | 107,990  |
| Transfer/sec   | 57.90MB  |
| Port           | 8044     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 23.29ms | 16.56ms | 432.50ms | 87.57%    |
| Req/Sec | 2.71k   | 341.34  | 3.25k    | 84.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 89.57MiB |
| Memory Limit | 1GiB     |
| Memory %     | 8.75%    |
| CPU %        | 0.02%    |
| PIDs         | 29       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8044/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    23.29ms   16.56ms 432.50ms   87.57%
    Req/Sec     2.71k   341.34     3.25k    84.25%
  107990 requests in 20.02s, 1.13GB read
Requests/sec:   5395.38
Transfer/sec:     57.90MB
```
