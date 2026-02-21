# JS NestJS Fastify — Orders Benchmark

**Tested**: 2026-02-20 05:51:27 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8030/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,393.83 |
| Avg Latency    | 39.34ms  |
| Max Latency    | 1.03s    |
| Total Requests | 67,904   |
| Transfer/sec   | 36.42MB  |
| Port           | 8030     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max   | +/- Stdev |
| ------- | ------- | ------- | ----- | --------- |
| Latency | 39.34ms | 47.60ms | 1.03s | 98.64%    |
| Req/Sec | 1.71k   | 147.72  | 1.99k | 78.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 50.28MiB |
| Memory Limit | 1GiB     |
| Memory %     | 4.91%    |
| CPU %        | 0.02%    |
| PIDs         | 11       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8030/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    39.34ms   47.60ms   1.03s    98.64%
    Req/Sec     1.71k   147.72     1.99k    78.25%
  67904 requests in 20.01s, 728.73MB read
Requests/sec:   3393.83
Transfer/sec:     36.42MB
```
