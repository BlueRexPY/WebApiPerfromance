# Bun API — Orders Benchmark

**Tested**: 2026-02-18 04:21:38 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,715.43 |
| Avg Latency    | 36.24ms  |
| Max Latency    | 613.93ms |
| Total Requests | 74,328   |
| Transfer/sec   | 39.65MB  |
| Port           | 8002     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 36.24ms | 37.71ms | 613.93ms | 97.91%    |
| Req/Sec | 1.87k   | 315.94  | 2.24k    | 94.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 49.88MiB |
| Memory Limit | 1GiB     |
| Memory %     | 4.87%    |
| CPU %        | 2.43%    |
| PIDs         | 18       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    36.24ms   37.71ms 613.93ms   97.91%
    Req/Sec     1.87k   315.94     2.24k    94.25%
  74328 requests in 20.01s, 793.20MB read
Requests/sec:   3715.43
Transfer/sec:     39.65MB
```
