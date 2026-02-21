# Python Litestar — Orders Benchmark

**Tested**: 2026-02-20 11:05:04 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8000/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,776.86 |
| Avg Latency    | 34.83ms  |
| Max Latency    | 162.60ms |
| Total Requests | 75,553   |
| Transfer/sec   | 41.09MB  |
| Port           | 8000     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 34.83ms | 27.77ms | 162.60ms | 63.45%    |
| Req/Sec | 1.90k   | 333.14  | 2.92k    | 76.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 197.5MiB |
| Memory Limit | 1GiB     |
| Memory %     | 19.29%   |
| CPU %        | 0.00%    |
| PIDs         | 37       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8000/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    34.83ms   27.77ms 162.60ms   63.45%
    Req/Sec     1.90k   333.14     2.92k    76.50%
  75553 requests in 20.00s, 821.91MB read
Requests/sec:   3776.86
Transfer/sec:     41.09MB
```
