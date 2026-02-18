# Go Fiber — Orders Benchmark

**Tested**: 2026-02-18 02:34:11 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8008/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 5,964.18 |
| Avg Latency    | 32.33ms  |
| Max Latency    | 613.24ms |
| Total Requests | 119,451  |
| Transfer/sec   | 65.37MB  |
| Port           | 8008     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 32.33ms | 39.83ms | 613.24ms | 84.06%    |
| Req/Sec | 3.00k   | 1.15k   | 6.11k    | 69.50%    |

## Resource Usage

| Metric       | Value   |
| ------------ | ------- |
| Memory Usage | 61.2MiB |
| Memory Limit | 1GiB    |
| Memory %     | 5.98%   |
| CPU %        | 0.02%   |
| PIDs         | 47      |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8008/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    32.33ms   39.83ms 613.24ms   84.06%
    Req/Sec     3.00k     1.15k    6.11k    69.50%
  119451 requests in 20.03s, 1.28GB read
Requests/sec:   5964.18
Transfer/sec:     65.37MB
```
