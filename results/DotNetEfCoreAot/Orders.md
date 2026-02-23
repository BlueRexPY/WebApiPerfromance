# C# EF Core AOT — Orders Benchmark

**Tested**: 2026-02-23 16:48:28 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8069/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 10,837.59 |
| Avg Latency    | 16.96ms   |
| Max Latency    | 94.23ms   |
| Total Requests | 217,138   |
| Transfer/sec   | 115.14MB  |
| Port           | 8069      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 16.96ms | 18.48ms | 94.23ms | 81.58%    |
| Req/Sec | 5.45k   | 1.84k   | 9.80k   | 62.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 120.9MiB |
| Memory Limit | 1GiB     |
| Memory %     | 11.81%   |
| CPU %        | 0.02%    |
| PIDs         | 20       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8069/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    16.96ms   18.48ms  94.23ms   81.58%
    Req/Sec     5.45k     1.84k    9.80k    62.25%
  217138 requests in 20.04s, 2.25GB read
Requests/sec:  10837.59
Transfer/sec:    115.14MB
```
