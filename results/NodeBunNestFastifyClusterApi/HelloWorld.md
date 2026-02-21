# JS Bun NestJS Fastify Cluster — Hello World Benchmark

**Tested**: 2026-02-21 11:49:08 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8060/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 103,569.44 |
| Avg Latency    | 3.32ms     |
| Max Latency    | 84.12ms    |
| Total Requests | 2,072,523  |
| Transfer/sec   | 14.82MB    |
| Port           | 8060       |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 3.32ms | 8.53ms | 84.12ms | 94.12%    |
| Req/Sec | 52.08k | 19.67k | 90.51k  | 78.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 161.6MiB |
| Memory Limit | 1GiB     |
| Memory %     | 15.78%   |
| CPU %        | 2.91%    |
| PIDs         | 31       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8060/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.32ms    8.53ms  84.12ms   94.12%
    Req/Sec    52.08k    19.67k   90.51k    78.00%
  2072523 requests in 20.01s, 296.48MB read
Requests/sec: 103569.44
Transfer/sec:     14.82MB
```
