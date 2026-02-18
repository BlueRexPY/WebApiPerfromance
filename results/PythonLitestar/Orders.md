# Python Litestar — Orders Benchmark

**Tested**: 2026-02-18 02:25:09 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8000/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,161.15 |
| Avg Latency    | 39.86ms  |
| Max Latency    | 180.15ms |
| Total Requests | 63,269   |
| Transfer/sec   | 34.39MB  |
| Port           | 8000     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 39.86ms | 31.29ms | 180.15ms | 56.11%    |
| Req/Sec | 1.59k   | 439.55  | 2.95k    | 70.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 155.8MiB |
| Memory Limit | 1GiB     |
| Memory %     | 15.21%   |
| CPU %        | 0.00%    |
| PIDs         | 37       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8000/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    39.86ms   31.29ms 180.15ms   56.11%
    Req/Sec     1.59k   439.55     2.95k    70.25%
  63269 requests in 20.01s, 688.28MB read
Requests/sec:   3161.15
Transfer/sec:     34.39MB
```
