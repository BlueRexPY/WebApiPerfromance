# C# Carter AOT — Orders Benchmark

**Tested**: 2026-02-21 07:09:45 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8036/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 9,015.45 |
| Avg Latency    | 19.81ms  |
| Max Latency    | 96.70ms  |
| Total Requests | 180,493  |
| Transfer/sec   | 95.78MB  |
| Port           | 8036     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 19.81ms | 20.95ms | 96.70ms | 80.63%    |
| Req/Sec | 4.53k   | 1.67k   | 9.21k   | 69.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 31.76MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.10%    |
| CPU %        | 0.04%    |
| PIDs         | 21       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8036/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    19.81ms   20.95ms  96.70ms   80.63%
    Req/Sec     4.53k     1.67k    9.21k    69.00%
  180493 requests in 20.02s, 1.87GB read
Requests/sec:   9015.45
Transfer/sec:     95.78MB
```
