# JS Bun Fastify Cluster — Orders Benchmark

**Tested**: 2026-02-21 11:44:52 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8056/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 5,866.15 |
| Avg Latency    | 27.04ms  |
| Max Latency    | 697.98ms |
| Total Requests | 117,354  |
| Transfer/sec   | 62.69MB  |
| Port           | 8056     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 27.04ms | 51.88ms | 697.98ms | 97.66%    |
| Req/Sec | 2.95k   | 601.39  | 3.78k    | 89.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 169.9MiB |
| Memory Limit | 1GiB     |
| Memory %     | 16.59%   |
| CPU %        | 9.07%    |
| PIDs         | 48       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8056/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    27.04ms   51.88ms 697.98ms   97.66%
    Req/Sec     2.95k   601.39     3.78k    89.75%
  117354 requests in 20.01s, 1.22GB read
Requests/sec:   5866.15
Transfer/sec:     62.69MB
```
