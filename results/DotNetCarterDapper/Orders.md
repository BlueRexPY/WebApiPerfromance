# C# Carter Dapper — Orders Benchmark

**Tested**: 2026-02-23 16:51:26 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8073/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 8,841.10 |
| Avg Latency    | 20.51ms  |
| Max Latency    | 97.02ms  |
| Total Requests | 177,008  |
| Transfer/sec   | 93.93MB  |
| Port           | 8073     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 20.51ms | 21.79ms | 97.02ms | 80.23%    |
| Req/Sec | 4.45k   | 1.70k   | 9.76k   | 70.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 71.13MiB |
| Memory Limit | 1GiB     |
| Memory %     | 6.95%    |
| CPU %        | 0.03%    |
| PIDs         | 26       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8073/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    20.51ms   21.79ms  97.02ms   80.23%
    Req/Sec     4.45k     1.70k    9.76k    70.50%
  177008 requests in 20.02s, 1.84GB read
Requests/sec:   8841.10
Transfer/sec:     93.93MB
```
