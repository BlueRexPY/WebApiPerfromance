# .NET API — Orders Benchmark

**Tested**: 2026-02-18 02:26:17 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 9,152.07 |
| Avg Latency    | 19.79ms  |
| Max Latency    | 98.98ms  |
| Total Requests | 183,224  |
| Transfer/sec   | 97.23MB  |
| Port           | 8001     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 19.79ms | 20.99ms | 98.98ms | 80.36%    |
| Req/Sec | 4.60k   | 1.43k   | 9.01k   | 67.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 59.26MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.79%    |
| CPU %        | 2.74%    |
| PIDs         | 24       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    19.79ms   20.99ms  98.98ms   80.36%
    Req/Sec     4.60k     1.43k    9.01k    67.75%
  183224 requests in 20.02s, 1.90GB read
Requests/sec:   9152.07
Transfer/sec:     97.23MB
```
