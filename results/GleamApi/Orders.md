# Gleam Wisp — Orders Benchmark

**Tested**: 2026-02-21 13:38:11 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8063/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 2,126.94 |
| Avg Latency    | 56.37ms  |
| Max Latency    | 159.72ms |
| Total Requests | 42,581   |
| Transfer/sec   | 23.16MB  |
| Port           | 8063     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 56.37ms | 21.06ms | 159.72ms | 61.34%    |
| Req/Sec | 1.07k   | 141.89  | 1.38k    | 80.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 120.3MiB |
| Memory Limit | 1GiB     |
| Memory %     | 11.75%   |
| CPU %        | 0.31%    |
| PIDs         | 83       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8063/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    56.37ms   21.06ms 159.72ms   61.34%
    Req/Sec     1.07k   141.89     1.38k    80.25%
  42581 requests in 20.02s, 463.59MB read
Requests/sec:   2126.94
Transfer/sec:     23.16MB
```
