# C# Dapper — Orders Benchmark

**Tested**: 2026-02-23 16:49:26 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8071/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 7,858.15 |
| Avg Latency    | 21.71ms  |
| Max Latency    | 114.75ms |
| Total Requests | 157,322  |
| Transfer/sec   | 83.48MB  |
| Port           | 8071     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 21.71ms | 22.19ms | 114.75ms | 79.90%    |
| Req/Sec | 3.95k   | 1.44k   | 8.54k    | 76.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 60.66MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.92%    |
| CPU %        | 0.04%    |
| PIDs         | 25       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8071/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    21.71ms   22.19ms 114.75ms   79.90%
    Req/Sec     3.95k     1.44k    8.54k    76.50%
  157322 requests in 20.02s, 1.63GB read
Requests/sec:   7858.15
Transfer/sec:     83.48MB
```
