# F# AOT Dapper — Orders Benchmark

**Tested**: 2026-02-23 16:58:08 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8078/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 11,107.95 |
| Avg Latency    | 15.50ms   |
| Max Latency    | 89.47ms   |
| Total Requests | 222,335   |
| Transfer/sec   | 119.07MB  |
| Port           | 8078      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 15.50ms | 16.42ms | 89.47ms | 82.92%    |
| Req/Sec | 5.58k   | 1.72k   | 11.46k  | 65.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 35.24MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.44%    |
| CPU %        | 0.02%    |
| PIDs         | 23       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8078/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    15.50ms   16.42ms  89.47ms   82.92%
    Req/Sec     5.58k     1.72k   11.46k    65.00%
  222335 requests in 20.02s, 2.33GB read
Requests/sec:  11107.95
Transfer/sec:    119.07MB
```
