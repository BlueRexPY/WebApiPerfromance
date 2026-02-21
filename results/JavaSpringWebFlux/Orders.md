# Java Spring WebFlux — Orders Benchmark

**Tested**: 2026-02-21 12:39:21 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8065/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 542.12\* |
| Avg Latency    | 217.04ms |
| Max Latency    | 1.91s    |
| Total Requests | 10,868   |
| Transfer/sec   | 6.03MB   |
| Port           | 8065     |

## Thread Stats

| Stat    | Avg      | Stdev    | Max   | +/- Stdev |
| ------- | -------- | -------- | ----- | --------- |
| Latency | 217.04ms | 204.09ms | 1.91s | 88.71%    |
| Req/Sec | 289.48   | 230.58   | 0.92k | 64.36%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 236.4MiB |
| Memory Limit | 1GiB     |
| Memory %     | 23.09%   |
| CPU %        | 0.10%    |
| PIDs         | 26       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8065/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   217.04ms  204.09ms   1.91s    88.71%
    Req/Sec   289.48    230.58     0.92k    64.36%
  10868 requests in 20.05s, 120.80MB read
  Socket errors: connect 0, read 0, write 0, timeout 110
Requests/sec:    542.12
Transfer/sec:      6.03MB
```
