# Django API — Orders Benchmark

**Tested**: 2026-02-18 02:44:12 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8016/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 894.62\* |
| Avg Latency    | 135.13ms |
| Max Latency    | 467.39ms |
| Total Requests | 17,919   |
| Transfer/sec   | 9.86MB   |
| Port           | 8016     |

## Thread Stats

| Stat    | Avg      | Stdev   | Max      | +/- Stdev |
| ------- | -------- | ------- | -------- | --------- |
| Latency | 135.13ms | 57.89ms | 467.39ms | 82.47%    |
| Req/Sec | 452.88   | 175.25  | 1.13k    | 71.65%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 128.1MiB |
| Memory Limit | 1GiB     |
| Memory %     | 12.51%   |
| CPU %        | 0.11%    |
| PIDs         | 9        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8016/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   135.13ms   57.89ms 467.39ms   82.47%
    Req/Sec   452.88    175.25     1.13k    71.65%
  17919 requests in 20.03s, 197.49MB read
  Socket errors: connect 0, read 73, write 0, timeout 0
Requests/sec:    894.62
Transfer/sec:      9.86MB
```
