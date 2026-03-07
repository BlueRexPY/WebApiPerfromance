# Dart Shelf — Orders Benchmark

**Tested**: 2026-03-07 14:00:58 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8085/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 788.17\* |
| Avg Latency    | 115.07ms |
| Max Latency    | 1.96s    |
| Total Requests | 15,793   |
| Transfer/sec   | 8.74MB   |
| Port           | 8085     |

## Thread Stats

| Stat    | Avg      | Stdev   | Max   | +/- Stdev |
| ------- | -------- | ------- | ----- | --------- |
| Latency | 115.07ms | 82.89ms | 1.96s | 98.81%    |
| Req/Sec | 402.57   | 220.75  | 0.88k | 65.72%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 106.6MiB |
| Memory Limit | 1GiB     |
| Memory %     | 10.41%   |
| CPU %        | 0.00%    |
| PIDs         | 6        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8085/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   115.07ms   82.89ms   1.96s    98.81%
    Req/Sec   402.57    220.75     0.88k    65.72%
  15793 requests in 20.04s, 175.07MB read
  Socket errors: connect 0, read 0, write 0, timeout 94
Requests/sec:    788.17
Transfer/sec:      8.74MB
```
