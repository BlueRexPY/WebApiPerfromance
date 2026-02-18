# Java Spring Boot — Orders Benchmark

**Tested**: 2026-02-18 04:43:39 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8009/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 571.97\* |
| Avg Latency    | 241.20ms |
| Max Latency    | 2.00s    |
| Total Requests | 11,449   |
| Transfer/sec   | 6.52MB   |
| Port           | 8009     |

## Thread Stats

| Stat    | Avg      | Stdev    | Max   | +/- Stdev |
| ------- | -------- | -------- | ----- | --------- |
| Latency | 241.20ms | 236.77ms | 2.00s | 87.68%    |
| Req/Sec | 289.86   | 221.98   | 0.89k | 62.18%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 231.1MiB |
| Memory Limit | 1GiB     |
| Memory %     | 22.57%   |
| CPU %        | 5.35%    |
| PIDs         | 26       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8009/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   241.20ms  236.77ms   2.00s    87.68%
    Req/Sec   289.86    221.98     0.89k    62.18%
  11449 requests in 20.02s, 130.56MB read
  Socket errors: connect 0, read 0, write 0, timeout 50
Requests/sec:    571.97
Transfer/sec:      6.52MB
```
