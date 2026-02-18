# Fastify API — Orders Benchmark

**Tested**: 2026-02-18 02:28:36 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8003/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,712.32 |
| Avg Latency    | 32.75ms  |
| Max Latency    | 290.46ms |
| Total Requests | 74,266   |
| Transfer/sec   | 39.84MB  |
| Port           | 8003     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 32.75ms | 14.18ms | 290.46ms | 77.14%    |
| Req/Sec | 1.87k   | 180.39  | 2.14k    | 87.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 46.36MiB |
| Memory Limit | 1GiB     |
| Memory %     | 4.53%    |
| CPU %        | 0.01%    |
| PIDs         | 11       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8003/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    32.75ms   14.18ms 290.46ms   77.14%
    Req/Sec     1.87k   180.39     2.14k    87.50%
  74266 requests in 20.01s, 797.00MB read
Requests/sec:   3712.32
Transfer/sec:     39.84MB
```
