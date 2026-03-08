# JS Bun Elysia — Orders Benchmark

**Tested**: 2026-03-08 22:34:34 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8086/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 14,169.07 |
| Avg Latency    | 8.47ms    |
| Max Latency    | 22.87ms   |
| Total Requests | 283,469   |
| Transfer/sec   | 151.40MB  |
| Port           | 8086      |

## Thread Stats

| Stat    | Avg    | Stdev    | Max     | +/- Stdev |
| ------- | ------ | -------- | ------- | --------- |
| Latency | 8.47ms | 630.77us | 22.87ms | 83.17%    |
| Req/Sec | 7.12k  | 300.40   | 7.87k   | 66.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 41.01MiB |
| Memory Limit | 1GiB     |
| Memory %     | 4.00%    |
| CPU %        | 1.78%    |
| PIDs         | 27       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8086/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     8.47ms  630.77us  22.87ms   83.17%
    Req/Sec     7.12k   300.40     7.87k    66.00%
  283469 requests in 20.01s, 2.96GB read
Requests/sec:  14169.07
Transfer/sec:    151.40MB
```
