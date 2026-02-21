# C Microhttpd — Orders Benchmark

**Tested**: 2026-02-21 07:05:21 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8018/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 10,254.81 |
| Avg Latency    | 25.10ms   |
| Max Latency    | 186.54ms  |
| Total Requests | 205,312   |
| Transfer/sec   | 111.26MB  |
| Port           | 8018      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 25.10ms | 29.21ms | 186.54ms | 79.25%    |
| Req/Sec | 5.15k   | 1.36k   | 7.11k    | 66.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 5.809MiB |
| Memory Limit | 1GiB     |
| Memory %     | 0.57%    |
| CPU %        | 0.00%    |
| PIDs         | 33       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8018/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    25.10ms   29.21ms 186.54ms   79.25%
    Req/Sec     5.15k     1.36k    7.11k    66.75%
  205312 requests in 20.02s, 2.18GB read
Requests/sec:  10254.81
Transfer/sec:    111.26MB
```
