# Express API — Orders Benchmark

**Tested**: 2026-02-18 04:49:01 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8014/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 2,752.77 |
| Avg Latency    | 45.45ms  |
| Max Latency    | 532.15ms |
| Total Requests | 55,087   |
| Transfer/sec   | 29.54MB  |
| Port           | 8014     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 45.45ms | 25.37ms | 532.15ms | 98.33%    |
| Req/Sec | 1.39k   | 182.18  | 1.65k    | 90.23%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 48.51MiB |
| Memory Limit | 1GiB     |
| Memory %     | 4.74%    |
| CPU %        | 0.01%    |
| PIDs         | 11       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8014/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    45.45ms   25.37ms 532.15ms   98.33%
    Req/Sec     1.39k   182.18     1.65k    90.23%
  55087 requests in 20.01s, 591.12MB read
Requests/sec:   2752.77
Transfer/sec:     29.54MB
```
