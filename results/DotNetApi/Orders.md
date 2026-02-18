# .NET API — Orders Benchmark

**Tested**: 2026-02-18 05:01:14 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 10,455.90 |
| Avg Latency    | 18.60ms   |
| Max Latency    | 91.05ms   |
| Total Requests | 209,504   |
| Transfer/sec   | 111.08MB  |
| Port           | 8001      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 18.60ms | 20.56ms | 91.05ms | 80.54%    |
| Req/Sec | 5.25k   | 1.62k   | 10.78k  | 62.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 59.81MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.84%    |
| CPU %        | 0.02%    |
| PIDs         | 24       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    18.60ms   20.56ms  91.05ms   80.54%
    Req/Sec     5.25k     1.62k   10.78k    62.25%
  209504 requests in 20.04s, 2.17GB read
Requests/sec:  10455.90
Transfer/sec:    111.08MB
```
