# Haskell Servant — Orders Benchmark

**Tested**: 2026-02-18 02:31:53 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8006/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 1,011.93 |
| Avg Latency    | 118.11ms |
| Max Latency    | 240.93ms |
| Total Requests | 20,251   |
| Transfer/sec   | 11.03MB  |
| Port           | 8006     |

## Thread Stats

| Stat    | Avg      | Stdev   | Max      | +/- Stdev |
| ------- | -------- | ------- | -------- | --------- |
| Latency | 118.11ms | 49.79ms | 240.93ms | 58.88%    |
| Req/Sec | 508.32   | 57.97   | 680.00   | 66.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 258.1MiB |
| Memory Limit | 1GiB     |
| Memory %     | 25.21%   |
| CPU %        | 0.20%    |
| PIDs         | 16       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8006/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   118.11ms   49.79ms 240.93ms   58.88%
    Req/Sec   508.32     57.97   680.00     66.50%
  20251 requests in 20.01s, 220.75MB read
Requests/sec:   1011.93
Transfer/sec:     11.03MB
```
