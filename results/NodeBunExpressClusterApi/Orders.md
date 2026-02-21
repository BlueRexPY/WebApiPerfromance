# JS Bun Express Cluster — Orders Benchmark

**Tested**: 2026-02-21 11:43:42 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8055/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 5,383.80 |
| Avg Latency    | 25.50ms  |
| Max Latency    | 522.14ms |
| Total Requests | 107,705  |
| Transfer/sec   | 57.53MB  |
| Port           | 8055     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 25.50ms | 31.00ms | 522.14ms | 97.61%    |
| Req/Sec | 2.71k   | 523.39  | 3.63k    | 85.50%    |

## Resource Usage

| Metric       | Value  |
| ------------ | ------ |
| Memory Usage | 160MiB |
| Memory Limit | 1GiB   |
| Memory %     | 15.62% |
| CPU %        | 6.29%  |
| PIDs         | 43     |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8055/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    25.50ms   31.00ms 522.14ms   97.61%
    Req/Sec     2.71k   523.39     3.63k    85.50%
  107705 requests in 20.01s, 1.12GB read
Requests/sec:   5383.80
Transfer/sec:     57.53MB
```
