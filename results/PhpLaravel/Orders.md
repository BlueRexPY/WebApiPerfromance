# PHP Laravel — Orders Benchmark

**Tested**: 2026-02-21 05:38:14 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8037/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 2,165.20 |
| Avg Latency    | 60.50ms  |
| Max Latency    | 273.60ms |
| Total Requests | 43,316   |
| Transfer/sec   | 23.67MB  |
| Port           | 8037     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 60.50ms | 44.14ms | 273.60ms | 91.32%    |
| Req/Sec | 1.09k   | 206.59  | 2.29k    | 77.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 161.7MiB |
| Memory Limit | 1GiB     |
| Memory %     | 15.79%   |
| CPU %        | 1.43%    |
| PIDs         | 13       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8037/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    60.50ms   44.14ms 273.60ms   91.32%
    Req/Sec     1.09k   206.59     2.29k    77.50%
  43316 requests in 20.01s, 473.53MB read
Requests/sec:   2165.20
Transfer/sec:     23.67MB
```
