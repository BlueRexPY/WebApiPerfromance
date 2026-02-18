# .NET AOT — Orders Benchmark

**Tested**: 2026-02-18 04:47:57 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8013/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 10,335.60 |
| Avg Latency    | 17.99ms   |
| Max Latency    | 93.31ms   |
| Total Requests | 207,045   |
| Transfer/sec   | 109.80MB  |
| Port           | 8013      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max     | +/- Stdev |
| ------- | ------- | ------- | ------- | --------- |
| Latency | 17.99ms | 19.56ms | 93.31ms | 81.24%    |
| Req/Sec | 5.19k   | 1.59k   | 8.52k   | 62.00%    |

## Resource Usage

| Metric       | Value   |
| ------------ | ------- |
| Memory Usage | 34.1MiB |
| Memory Limit | 1GiB    |
| Memory %     | 3.33%   |
| CPU %        | 0.01%   |
| PIDs         | 21      |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8013/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    17.99ms   19.56ms  93.31ms   81.24%
    Req/Sec     5.19k     1.59k    8.52k    62.00%
  207045 requests in 20.03s, 2.15GB read
Requests/sec:  10335.60
Transfer/sec:    109.80MB
```
