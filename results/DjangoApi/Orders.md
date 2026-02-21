# Python Django — Orders Benchmark

**Tested**: 2026-02-20 11:17:47 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8016/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 470.49\* |
| Avg Latency    | 265.57ms |
| Max Latency    | 1.99s    |
| Total Requests | 9,428    |
| Transfer/sec   | 5.19MB   |
| Port           | 8016     |

## Thread Stats

| Stat    | Avg      | Stdev    | Max   | +/- Stdev |
| ------- | -------- | -------- | ----- | --------- |
| Latency | 265.57ms | 223.31ms | 1.99s | 82.85%    |
| Req/Sec | 236.68   | 146.57   | 0.97k | 76.44%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 490.1MiB |
| Memory Limit | 1GiB     |
| Memory %     | 47.86%   |
| CPU %        | 0.24%    |
| PIDs         | 92       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8016/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   265.57ms  223.31ms   1.99s    82.85%
    Req/Sec   236.68    146.57     0.97k    76.44%
  9428 requests in 20.04s, 103.91MB read
  Socket errors: connect 0, read 117, write 0, timeout 47
Requests/sec:    470.49
Transfer/sec:      5.19MB
```
