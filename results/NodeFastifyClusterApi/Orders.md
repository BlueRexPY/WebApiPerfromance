# JS Fastify Cluster — Orders Benchmark

**Tested**: 2026-02-21 06:18:07 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8042/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 5,576.88 |
| Avg Latency    | 22.43ms  |
| Max Latency    | 369.66ms |
| Total Requests | 111,555  |
| Transfer/sec   | 59.85MB  |
| Port           | 8042     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 22.43ms | 14.29ms | 369.66ms | 84.44%    |
| Req/Sec | 2.80k   | 382.10  | 3.43k    | 82.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 92.59MiB |
| Memory Limit | 1GiB     |
| Memory %     | 9.04%    |
| CPU %        | 0.02%    |
| PIDs         | 29       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8042/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    22.43ms   14.29ms 369.66ms   84.44%
    Req/Sec     2.80k   382.10     3.43k    82.75%
  111555 requests in 20.00s, 1.17GB read
Requests/sec:   5576.88
Transfer/sec:     59.85MB
```
