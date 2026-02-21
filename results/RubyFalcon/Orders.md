# Ruby Falcon — Orders Benchmark

**Tested**: 2026-02-21 05:19:00 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8040/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 7,012.41 |
| Avg Latency    | 26.65ms  |
| Max Latency    | 733.92ms |
| Total Requests | 140,349  |
| Transfer/sec   | 75.99MB  |
| Port           | 8040     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 26.65ms | 48.78ms | 733.92ms | 98.16%    |
| Req/Sec | 3.52k   | 531.21  | 4.81k    | 79.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 112.8MiB |
| Memory Limit | 1GiB     |
| Memory %     | 11.02%   |
| CPU %        | 0.03%    |
| PIDs         | 10       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8040/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    26.65ms   48.78ms 733.92ms   98.16%
    Req/Sec     3.52k   531.21     4.81k    79.50%
  140349 requests in 20.01s, 1.49GB read
Requests/sec:   7012.41
Transfer/sec:     75.99MB
```
