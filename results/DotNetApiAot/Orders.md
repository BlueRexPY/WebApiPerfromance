# C# .NET AOT — Orders Benchmark

**Tested**: 2026-02-23 16:43:34 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8013/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 11,097.91 |
| Avg Latency    | 16.17ms   |
| Max Latency    | 104.75ms  |
| Total Requests | 222,126   |
| Transfer/sec   | 117.90MB  |
| Port           | 8013      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 16.17ms | 17.32ms | 104.75ms | 81.76%    |
| Req/Sec | 5.58k   | 1.56k   | 9.78k    | 66.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 61.38MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.99%    |
| CPU %        | 0.03%    |
| PIDs         | 21       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8013/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    16.17ms   17.32ms 104.75ms   81.76%
    Req/Sec     5.58k     1.56k    9.78k    66.75%
  222126 requests in 20.02s, 2.30GB read
Requests/sec:  11097.91
Transfer/sec:    117.90MB
```
