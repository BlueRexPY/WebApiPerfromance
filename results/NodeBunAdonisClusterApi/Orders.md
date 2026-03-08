# JS Bun AdonisJS Cluster — Orders Benchmark

**Tested**: 2026-03-08 22:40:09 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8092/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 4,441.34 |
| Avg Latency    | 31.56ms  |
| Max Latency    | 656.07ms |
| Total Requests | 88,860   |
| Transfer/sec   | 47.46MB  |
| Port           | 8092     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 31.56ms | 41.90ms | 656.07ms | 97.91%    |
| Req/Sec | 2.23k   | 419.18  | 2.80k    | 88.75%    |

## Resource Usage

| Metric       | Value  |
| ------------ | ------ |
| Memory Usage | 260MiB |
| Memory Limit | 1GiB   |
| Memory %     | 25.39% |
| CPU %        | 5.40%  |
| PIDs         | 59     |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8092/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    31.56ms   41.90ms 656.07ms   97.91%
    Req/Sec     2.23k   419.18     2.80k    88.75%
  88860 requests in 20.01s, 0.93GB read
Requests/sec:   4441.34
Transfer/sec:     47.46MB
```
