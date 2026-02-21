# JS Express Cluster — Orders Benchmark

**Tested**: 2026-02-21 06:19:19 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8041/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 4,784.64 |
| Avg Latency    | 26.83ms  |
| Max Latency    | 497.11ms |
| Total Requests | 95,720   |
| Transfer/sec   | 51.34MB  |
| Port           | 8041     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 26.83ms | 23.45ms | 497.11ms | 95.49%    |
| Req/Sec | 2.40k   | 370.73  | 2.94k    | 85.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 92.03MiB |
| Memory Limit | 1GiB     |
| Memory %     | 8.99%    |
| CPU %        | 0.05%    |
| PIDs         | 29       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8041/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    26.83ms   23.45ms 497.11ms   95.49%
    Req/Sec     2.40k   370.73     2.94k    85.75%
  95720 requests in 20.01s, 1.00GB read
Requests/sec:   4784.64
Transfer/sec:     51.34MB
```
