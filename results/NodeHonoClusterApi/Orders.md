# JS Hono Cluster — Orders Benchmark

**Tested**: 2026-02-21 06:16:29 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8043/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 4,578.65 |
| Avg Latency    | 28.34ms  |
| Max Latency    | 541.61ms |
| Total Requests | 91,593   |
| Transfer/sec   | 49.07MB  |
| Port           | 8043     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 28.34ms | 26.12ms | 541.61ms | 97.38%    |
| Req/Sec | 2.30k   | 348.69  | 2.74k    | 91.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 90.64MiB |
| Memory Limit | 1GiB     |
| Memory %     | 8.85%    |
| CPU %        | 0.04%    |
| PIDs         | 29       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8043/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    28.34ms   26.12ms 541.61ms   97.38%
    Req/Sec     2.30k   348.69     2.74k    91.25%
  91593 requests in 20.00s, 0.96GB read
Requests/sec:   4578.65
Transfer/sec:     49.07MB
```
