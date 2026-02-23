# C# Carter AOT — Orders Benchmark

**Tested**: 2026-02-23 16:46:32 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8036/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 8,353.54 |
| Avg Latency    | 20.49ms  |
| Max Latency    | 98.74ms  |
| Total Requests | 167,376  |
| Transfer/sec   | 88.75MB  |
| Port           | 8036     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 20.49ms | 21.00ms | 98.74ms | 80.22%    |
| Req/Sec | 4.20k   | 1.40k   | 10.06k  | 70.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 49.17MiB |
| Memory Limit | 1GiB     |
| Memory %     | 4.80%    |
| CPU %        | 0.02%    |
| PIDs         | 20       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8036/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    20.49ms   21.00ms  98.74ms   80.22%
    Req/Sec     4.20k     1.40k   10.06k    70.00%
  167376 requests in 20.04s, 1.74GB read
Requests/sec:   8353.54
Transfer/sec:     88.75MB
```
