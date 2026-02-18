# Python FastAPI — Orders Benchmark

**Tested**: 2026-02-18 03:23:27 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8004/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 2,906.74 |
| Avg Latency    | 41.98ms  |
| Max Latency    | 169.17ms |
| Total Requests | 58,150   |
| Transfer/sec   | 31.62MB  |
| Port           | 8004     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 41.98ms | 28.24ms | 169.17ms | 66.83%    |
| Req/Sec | 1.46k   | 232.03  | 1.95k    | 63.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 200.6MiB |
| Memory Limit | 1GiB     |
| Memory %     | 19.59%   |
| CPU %        | 0.58%    |
| PIDs         | 26       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8004/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    41.98ms   28.24ms 169.17ms   66.83%
    Req/Sec     1.46k   232.03     1.95k    63.75%
  58150 requests in 20.01s, 632.59MB read
Requests/sec:   2906.74
Transfer/sec:     31.62MB
```
