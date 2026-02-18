# Haskell Servant — Orders Benchmark

**Tested**: 2026-02-18 04:40:17 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8006/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 618.77\* |
| Avg Latency    | 180.92ms |
| Max Latency    | 1.93s    |
| Total Requests | 12,397   |
| Transfer/sec   | 6.74MB   |
| Port           | 8006     |

## Thread Stats

| Stat    | Avg      | Stdev    | Max    | +/- Stdev |
| ------- | -------- | -------- | ------ | --------- |
| Latency | 180.92ms | 130.42ms | 1.93s  | 95.19%    |
| Req/Sec | 327.04   | 118.83   | 580.00 | 80.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 248.4MiB |
| Memory Limit | 1GiB     |
| Memory %     | 24.26%   |
| CPU %        | 0.11%    |
| PIDs         | 16       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8006/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   180.92ms  130.42ms   1.93s    95.19%
    Req/Sec   327.04    118.83   580.00     80.00%
  12397 requests in 20.03s, 135.13MB read
  Socket errors: connect 0, read 0, write 0, timeout 99
Requests/sec:    618.77
Transfer/sec:      6.74MB
```
