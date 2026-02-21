# PHP Swoole — Orders Benchmark

**Tested**: 2026-02-21 07:07:47 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8028/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 5,500.98 |
| Avg Latency    | 32.79ms  |
| Max Latency    | 208.24ms |
| Total Requests | 110,352  |
| Transfer/sec   | 59.96MB  |
| Port           | 8028     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 32.79ms | 34.96ms | 208.24ms | 77.47%    |
| Req/Sec | 2.76k   | 669.06  | 6.43k    | 80.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 54.55MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.33%    |
| CPU %        | 0.14%    |
| PIDs         | 33       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8028/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    32.79ms   34.96ms 208.24ms   77.47%
    Req/Sec     2.76k   669.06     6.43k    80.50%
  110352 requests in 20.06s, 1.17GB read
Requests/sec:   5500.98
Transfer/sec:     59.96MB
```
