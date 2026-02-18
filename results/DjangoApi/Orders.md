# Django API — Orders Benchmark

**Tested**: 2026-02-18 04:51:20 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8016/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 832.70\* |
| Avg Latency    | 142.94ms |
| Max Latency    | 2.00s    |
| Total Requests | 16,674   |
| Transfer/sec   | 9.18MB   |
| Port           | 8016     |

## Thread Stats

| Stat    | Avg      | Stdev    | Max   | +/- Stdev |
| ------- | -------- | -------- | ----- | --------- |
| Latency | 142.94ms | 141.75ms | 2.00s | 87.39%    |
| Req/Sec | 452.14   | 211.56   | 1.17k | 73.78%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 396.6MiB |
| Memory Limit | 1GiB     |
| Memory %     | 38.73%   |
| CPU %        | 0.22%    |
| PIDs         | 47       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8016/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   142.94ms  141.75ms   2.00s    87.39%
    Req/Sec   452.14    211.56     1.17k    73.78%
  16674 requests in 20.02s, 183.77MB read
  Socket errors: connect 0, read 94, write 0, timeout 109
Requests/sec:    832.70
Transfer/sec:      9.18MB
```
