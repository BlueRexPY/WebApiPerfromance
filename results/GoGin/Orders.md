# Go Gin — Orders Benchmark

**Tested**: 2026-02-21 12:35:56 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8066/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 6,719.73 |
| Avg Latency    | 29.75ms  |
| Max Latency    | 372.20ms |
| Total Requests | 134,574  |
| Transfer/sec   | 73.76MB  |
| Port           | 8066     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 29.75ms | 33.94ms | 372.20ms | 78.92%    |
| Req/Sec | 3.38k   | 1.05k   | 5.86k    | 59.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 60.76MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.93%    |
| CPU %        | 0.00%    |
| PIDs         | 48       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8066/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    29.75ms   33.94ms 372.20ms   78.92%
    Req/Sec     3.38k     1.05k    5.86k    59.00%
  134574 requests in 20.03s, 1.44GB read
Requests/sec:   6719.73
Transfer/sec:     73.76MB
```
