# JS Bun Cluster — Orders Benchmark

**Tested**: 2026-02-21 06:40:10 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8047/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 27,628.28 |
| Avg Latency    | 4.36ms    |
| Max Latency    | 24.95ms   |
| Total Requests | 552,627   |
| Transfer/sec   | 294.84MB  |
| Port           | 8047      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 4.36ms | 1.02ms | 24.95ms | 93.35%    |
| Req/Sec | 13.89k | 481.83 | 15.10k  | 80.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 47.51MiB |
| Memory Limit | 1GiB     |
| Memory %     | 4.64%    |
| CPU %        | 0.70%    |
| PIDs         | 46       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8047/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.36ms    1.02ms  24.95ms   93.35%
    Req/Sec    13.89k   481.83    15.10k    80.25%
  552627 requests in 20.00s, 5.76GB read
Requests/sec:  27628.28
Transfer/sec:    294.84MB
```
