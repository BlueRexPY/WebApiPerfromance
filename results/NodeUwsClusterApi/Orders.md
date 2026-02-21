# JS Node uWS Cluster — Orders Benchmark

**Tested**: 2026-02-21 13:42:57 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8068/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 5,155.84 |
| Avg Latency    | 24.26ms  |
| Max Latency    | 320.72ms |
| Total Requests | 103,135  |
| Transfer/sec   | 55.10MB  |
| Port           | 8068     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 24.26ms | 15.48ms | 320.72ms | 95.59%    |
| Req/Sec | 2.59k   | 404.43  | 3.15k    | 84.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 82.21MiB |
| Memory Limit | 1GiB     |
| Memory %     | 8.03%    |
| CPU %        | 0.03%    |
| PIDs         | 29       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8068/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    24.26ms   15.48ms 320.72ms   95.59%
    Req/Sec     2.59k   404.43     3.15k    84.00%
  103135 requests in 20.00s, 1.08GB read
Requests/sec:   5155.84
Transfer/sec:     55.10MB
```
