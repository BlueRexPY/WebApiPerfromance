# JS Bun NestJS Fastify — Orders Benchmark

**Tested**: 2026-02-21 11:42:33 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8054/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 4,442.57 |
| Avg Latency    | 29.65ms  |
| Max Latency    | 457.81ms |
| Total Requests | 88,884   |
| Transfer/sec   | 47.47MB  |
| Port           | 8054     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 29.65ms | 28.70ms | 457.81ms | 98.27%    |
| Req/Sec | 2.24k   | 299.92  | 2.48k    | 95.74%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 93.96MiB |
| Memory Limit | 1GiB     |
| Memory %     | 9.18%    |
| CPU %        | 6.44%    |
| PIDs         | 44       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8054/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    29.65ms   28.70ms 457.81ms   98.27%
    Req/Sec     2.24k   299.92     2.48k    95.74%
  88884 requests in 20.01s, 0.93GB read
Requests/sec:   4442.57
Transfer/sec:     47.47MB
```
