# .NET AOT — Orders Benchmark

**Tested**: 2026-02-18 02:40:49 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8013/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 9,852.22 |
| Avg Latency    | 18.38ms  |
| Max Latency    | 95.76ms  |
| Total Requests | 197,422  |
| Transfer/sec   | 104.67MB |
| Port           | 8013     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 18.38ms | 19.59ms | 95.76ms | 80.81%    |
| Req/Sec | 4.95k   | 1.64k   | 9.13k   | 65.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 34.27MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.35%    |
| CPU %        | 0.02%    |
| PIDs         | 20       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8013/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    18.38ms   19.59ms  95.76ms   80.81%
    Req/Sec     4.95k     1.64k    9.13k    65.75%
  197422 requests in 20.04s, 2.05GB read
Requests/sec:   9852.22
Transfer/sec:    104.67MB
```
