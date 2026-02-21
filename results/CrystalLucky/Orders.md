# Crystal Lucky — Orders Benchmark

**Tested**: 2026-02-21 13:37:04 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8062/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 465.35   |
| Avg Latency    | 276.11ms |
| Max Latency    | 1.18s    |
| Total Requests | 9,318    |
| Transfer/sec   | 4.84MB   |
| Port           | 8062     |

## Thread Stats

| Stat    | Avg      | Stdev    | Max   | +/- Stdev |
| ------- | -------- | -------- | ----- | --------- |
| Latency | 276.11ms | 220.44ms | 1.18s | 65.71%    |
| Req/Sec | 233.76   | 141.87   | 0.91k | 79.65%    |

## Resource Usage

| Metric       | Value   |
| ------------ | ------- |
| Memory Usage | 51.9MiB |
| Memory Limit | 1GiB    |
| Memory %     | 5.07%   |
| CPU %        | 3.55%   |
| PIDs         | 1       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8062/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   276.11ms  220.44ms   1.18s    65.71%
    Req/Sec   233.76    141.87     0.91k    79.65%
  9318 requests in 20.02s, 96.92MB read
Requests/sec:    465.35
Transfer/sec:      4.84MB
```
