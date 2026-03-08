# JS Node Nitro Cluster — Orders Benchmark

**Tested**: 2026-03-08 22:41:20 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8093/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 4,606.21 |
| Avg Latency    | 27.32ms  |
| Max Latency    | 502.98ms |
| Total Requests | 92,199   |
| Transfer/sec   | 49.36MB  |
| Port           | 8093     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 27.32ms | 20.17ms | 502.98ms | 89.00%    |
| Req/Sec | 2.31k   | 356.10  | 3.08k    | 78.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 98.76MiB |
| Memory Limit | 1GiB     |
| Memory %     | 9.64%    |
| CPU %        | 0.04%    |
| PIDs         | 29       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8093/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    27.32ms   20.17ms 502.98ms   89.00%
    Req/Sec     2.31k   356.10     3.08k    78.00%
  92199 requests in 20.02s, 0.96GB read
Requests/sec:   4606.21
Transfer/sec:     49.36MB
```
