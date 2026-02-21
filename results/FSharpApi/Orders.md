# F# .NET API — Orders Benchmark

**Tested**: 2026-02-21 07:18:45 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8019/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 7,505.31 |
| Avg Latency    | 23.10ms  |
| Max Latency    | 96.60ms  |
| Total Requests | 150,420  |
| Transfer/sec   | 79.74MB  |
| Port           | 8019     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 23.10ms | 23.76ms | 96.60ms | 79.72%    |
| Req/Sec | 3.77k   | 1.43k   | 12.67k  | 88.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 59.72MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.83%    |
| CPU %        | 2.09%    |
| PIDs         | 24       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8019/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    23.10ms   23.76ms  96.60ms   79.72%
    Req/Sec     3.77k     1.43k   12.67k    88.25%
  150420 requests in 20.04s, 1.56GB read
Requests/sec:   7505.31
Transfer/sec:     79.74MB
```
