# Java Spring Boot — Orders Benchmark

**Tested**: 2026-02-18 03:40:23 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8009/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 660.05   |
| Avg Latency    | 219.33ms |
| Max Latency    | 1.61s    |
| Total Requests | 13,216   |
| Transfer/sec   | 7.53MB   |
| Port           | 8009     |

## Thread Stats

| Stat    | Avg      | Stdev    | Max   | +/- Stdev |
| ------- | -------- | -------- | ----- | --------- |
| Latency | 219.33ms | 205.84ms | 1.61s | 88.73%    |
| Req/Sec | 331.67   | 231.58   | 1.09k | 62.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 222.1MiB |
| Memory Limit | 1GiB     |
| Memory %     | 21.69%   |
| CPU %        | 8.91%    |
| PIDs         | 26       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8009/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   219.33ms  205.84ms   1.61s    88.73%
    Req/Sec   331.67    231.58     1.09k    62.00%
  13216 requests in 20.02s, 150.68MB read
Requests/sec:    660.05
Transfer/sec:      7.53MB
```
