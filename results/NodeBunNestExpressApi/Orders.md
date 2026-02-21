# JS Bun NestJS Express — Orders Benchmark

**Tested**: 2026-02-21 11:41:20 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8053/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 4,380.24 |
| Avg Latency    | 27.53ms  |
| Max Latency    | 144.06ms |
| Total Requests | 87,619   |
| Transfer/sec   | 47.09MB  |
| Port           | 8053     |

## Thread Stats

| Stat    | Avg     | Stdev  | Max      | +/- Stdev |
| ------- | ------- | ------ | -------- | --------- |
| Latency | 27.53ms | 7.65ms | 144.06ms | 75.42%    |
| Req/Sec | 2.20k   | 172.14 | 2.40k    | 95.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 81.44MiB |
| Memory Limit | 1GiB     |
| Memory %     | 7.95%    |
| CPU %        | 9.05%    |
| PIDs         | 41       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8053/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    27.53ms    7.65ms 144.06ms   75.42%
    Req/Sec     2.20k   172.14     2.40k    95.75%
  87619 requests in 20.00s, 0.92GB read
Requests/sec:   4380.24
Transfer/sec:     47.09MB
```
