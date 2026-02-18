# Python Litestar — Orders Benchmark

**Tested**: 2026-02-18 05:00:14 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8000/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,275.96 |
| Avg Latency    | 38.73ms  |
| Max Latency    | 180.56ms |
| Total Requests | 65,554   |
| Transfer/sec   | 35.64MB  |
| Port           | 8000     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 38.73ms | 30.37ms | 180.56ms | 60.46%    |
| Req/Sec | 1.65k   | 600.93  | 3.09k    | 56.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 159.9MiB |
| Memory Limit | 1GiB     |
| Memory %     | 15.62%   |
| CPU %        | 0.00%    |
| PIDs         | 37       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8000/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    38.73ms   30.37ms 180.56ms   60.46%
    Req/Sec     1.65k   600.93     3.09k    56.50%
  65554 requests in 20.01s, 713.13MB read
Requests/sec:   3275.96
Transfer/sec:     35.64MB
```
