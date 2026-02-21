# JS NestJS Fastify Cluster — Orders Benchmark

**Tested**: 2026-02-21 06:12:18 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8046/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 4,541.06 |
| Avg Latency    | 29.08ms  |
| Max Latency    | 815.96ms |
| Total Requests | 90,849   |
| Transfer/sec   | 48.73MB  |
| Port           | 8046     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 29.08ms | 31.55ms | 815.96ms | 97.01%    |
| Req/Sec | 2.28k   | 371.66  | 2.90k    | 85.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 112.9MiB |
| Memory Limit | 1GiB     |
| Memory %     | 11.03%   |
| CPU %        | 0.02%    |
| PIDs         | 29       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8046/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    29.08ms   31.55ms 815.96ms   97.01%
    Req/Sec     2.28k   371.66     2.90k    85.00%
  90849 requests in 20.01s, 0.95GB read
Requests/sec:   4541.06
Transfer/sec:     48.73MB
```
