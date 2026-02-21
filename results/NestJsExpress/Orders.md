# NestJS Express — Orders Benchmark

**Tested**: 2026-02-20 05:49:32 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8029/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 2,785.96 |
| Avg Latency    | 49.84ms  |
| Max Latency    | 1.23s    |
| Total Requests | 55,753   |
| Transfer/sec   | 30.07MB  |
| Port           | 8029     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max   | +/- Stdev |
| ------- | ------- | ------- | ----- | --------- |
| Latency | 49.84ms | 68.97ms | 1.23s | 98.28%    |
| Req/Sec | 1.40k   | 114.58  | 1.64k | 82.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 53.66MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.24%    |
| CPU %        | 0.01%    |
| PIDs         | 11       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8029/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    49.84ms   68.97ms   1.23s    98.28%
    Req/Sec     1.40k   114.58     1.64k    82.00%
  55753 requests in 20.01s, 601.83MB read
Requests/sec:   2785.96
Transfer/sec:     30.07MB
```
