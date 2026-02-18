# Rust Actix — Orders Benchmark

**Tested**: 2026-02-18 04:39:15 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8005/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 9,376.94 |
| Avg Latency    | 25.56ms  |
| Max Latency    | 287.83ms |
| Total Requests | 187,772  |
| Transfer/sec   | 101.86MB |
| Port           | 8005     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 25.56ms | 29.67ms | 287.83ms | 77.39%    |
| Req/Sec | 4.71k   | 1.09k   | 6.83k    | 66.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 15.56MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.52%    |
| CPU %        | 0.14%    |
| PIDs         | 16       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8005/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    25.56ms   29.67ms 287.83ms   77.39%
    Req/Sec     4.71k     1.09k    6.83k    66.00%
  187772 requests in 20.02s, 1.99GB read
Requests/sec:   9376.94
Transfer/sec:    101.86MB
```
