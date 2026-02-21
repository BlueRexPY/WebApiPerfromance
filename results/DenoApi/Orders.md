# JS Deno — Orders Benchmark

**Tested**: 2026-02-20 11:15:06 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8011/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 1,662.90 |
| Avg Latency    | 72.51ms  |
| Max Latency    | 311.88ms |
| Total Requests | 33,311   |
| Transfer/sec   | 17.78MB  |
| Port           | 8011     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 72.51ms | 15.79ms | 311.88ms | 93.67%    |
| Req/Sec | 835.72  | 123.49  | 1.14k    | 80.00%    |

## Resource Usage

| Metric       | Value  |
| ------------ | ------ |
| Memory Usage | 177MiB |
| Memory Limit | 1GiB   |
| Memory %     | 17.29% |
| CPU %        | 0.01%  |
| PIDs         | 18     |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8011/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    72.51ms   15.79ms 311.88ms   93.67%
    Req/Sec   835.72    123.49     1.14k    80.00%
  33311 requests in 20.03s, 356.21MB read
Requests/sec:   1662.90
Transfer/sec:     17.78MB
```
