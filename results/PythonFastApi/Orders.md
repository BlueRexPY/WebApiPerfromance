# Python FastAPI — Orders Benchmark

**Tested**: 2026-02-18 04:38:12 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8004/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 1,912.48 |
| Avg Latency    | 62.77ms  |
| Max Latency    | 194.96ms |
| Total Requests | 38,260   |
| Transfer/sec   | 20.81MB  |
| Port           | 8004     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 62.77ms | 31.32ms | 194.96ms | 53.40%    |
| Req/Sec | 0.96k   | 125.94  | 1.41k    | 70.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 202.2MiB |
| Memory Limit | 1GiB     |
| Memory %     | 19.75%   |
| CPU %        | 0.56%    |
| PIDs         | 26       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8004/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    62.77ms   31.32ms 194.96ms   53.40%
    Req/Sec     0.96k   125.94     1.41k    70.00%
  38260 requests in 20.01s, 416.21MB read
Requests/sec:   1912.48
Transfer/sec:     20.81MB
```
