# JS Bun AdonisJS — Orders Benchmark

**Tested**: 2026-03-08 22:37:40 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8090/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,091.47 |
| Avg Latency    | 41.59ms  |
| Max Latency    | 568.84ms |
| Total Requests | 61,868   |
| Transfer/sec   | 33.04MB  |
| Port           | 8090     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 41.59ms | 31.51ms | 568.84ms | 98.00%    |
| Req/Sec | 1.56k   | 206.96  | 1.79k    | 94.49%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 114.8MiB |
| Memory Limit | 1GiB     |
| Memory %     | 11.21%   |
| CPU %        | 0.85%    |
| PIDs         | 23       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8090/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    41.59ms   31.51ms 568.84ms   98.00%
    Req/Sec     1.56k   206.96     1.79k    94.49%
  61868 requests in 20.01s, 661.12MB read
Requests/sec:   3091.47
Transfer/sec:     33.04MB
```
