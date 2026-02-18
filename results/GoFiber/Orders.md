# Go Fiber — Orders Benchmark

**Tested**: 2026-02-18 04:42:33 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8008/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 8,051.70 |
| Avg Latency    | 28.15ms  |
| Max Latency    | 516.70ms |
| Total Requests | 161,447  |
| Transfer/sec   | 88.24MB  |
| Port           | 8008     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 28.15ms | 35.87ms | 516.70ms | 82.21%    |
| Req/Sec | 4.05k   | 838.03  | 5.81k    | 74.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 60.96MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.95%    |
| CPU %        | 0.01%    |
| PIDs         | 46       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8008/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    28.15ms   35.87ms 516.70ms   82.21%
    Req/Sec     4.05k   838.03     5.81k    74.25%
  161447 requests in 20.05s, 1.73GB read
Requests/sec:   8051.70
Transfer/sec:     88.24MB
```
