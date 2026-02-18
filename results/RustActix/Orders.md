# Rust Actix — Orders Benchmark

**Tested**: 2026-02-18 03:24:28 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8005/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 13,382.30 |
| Avg Latency    | 20.71ms   |
| Max Latency    | 240.98ms  |
| Total Requests | 268,146   |
| Transfer/sec   | 142.58MB  |
| Port           | 8005      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 20.71ms | 25.23ms | 240.98ms | 79.34%    |
| Req/Sec | 6.73k   | 1.46k   | 9.56k    | 66.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 14.38MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.40%    |
| CPU %        | 0.15%    |
| PIDs         | 16       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8005/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    20.71ms   25.23ms 240.98ms   79.34%
    Req/Sec     6.73k     1.46k    9.56k    66.50%
  268146 requests in 20.04s, 2.79GB read
Requests/sec:  13382.30
Transfer/sec:    142.58MB
```
