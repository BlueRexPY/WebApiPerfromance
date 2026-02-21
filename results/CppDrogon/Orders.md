# C++ Drogon — Orders Benchmark

**Tested**: 2026-02-21 06:54:41 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8017/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 1,889.10 |
| Avg Latency    | 66.90ms  |
| Max Latency    | 394.96ms |
| Total Requests | 37,859   |
| Transfer/sec   | 20.56MB  |
| Port           | 8017     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 66.90ms | 54.93ms | 394.96ms | 52.95%    |
| Req/Sec | 0.95k   | 305.17  | 2.35k    | 85.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 44.86MiB |
| Memory Limit | 1GiB     |
| Memory %     | 4.38%    |
| CPU %        | 5.07%    |
| PIDs         | 65       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8017/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    66.90ms   54.93ms 394.96ms   52.95%
    Req/Sec     0.95k   305.17     2.35k    85.75%
  37859 requests in 20.04s, 412.10MB read
Requests/sec:   1889.10
Transfer/sec:     20.56MB
```
