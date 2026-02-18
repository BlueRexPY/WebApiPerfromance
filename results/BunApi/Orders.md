# Bun API — Orders Benchmark

**Tested**: 2026-02-18 04:58:22 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 13,926.52 |
| Avg Latency    | 8.61ms    |
| Max Latency    | 25.04ms   |
| Total Requests | 278,570   |
| Transfer/sec   | 148.62MB  |
| Port           | 8002      |

## Thread Stats

| Stat    | Avg    | Stdev    | Max     | +/- Stdev |
| ------- | ------ | -------- | ------- | --------- |
| Latency | 8.61ms | 759.45us | 25.04ms | 88.86%    |
| Req/Sec | 7.00k  | 341.16   | 7.74k   | 73.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 22.21MiB |
| Memory Limit | 1GiB     |
| Memory %     | 2.17%    |
| CPU %        | 1.28%    |
| PIDs         | 16       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     8.61ms  759.45us  25.04ms   88.86%
    Req/Sec     7.00k   341.16     7.74k    73.50%
  278570 requests in 20.00s, 2.90GB read
Requests/sec:  13926.52
Transfer/sec:    148.62MB
```
