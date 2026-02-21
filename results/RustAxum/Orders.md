# Rust Axum — Orders Benchmark

**Tested**: 2026-02-20 03:55:29 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8022/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 14,961.55 |
| Avg Latency    | 11.05ms   |
| Max Latency    | 273.42ms  |
| Total Requests | 299,291   |
| Transfer/sec   | 162.52MB  |
| Port           | 8022      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 11.05ms | 13.70ms | 273.42ms | 87.65%    |
| Req/Sec | 7.52k   | 1.38k   | 10.49k   | 80.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 9.605MiB |
| Memory Limit | 1GiB     |
| Memory %     | 0.94%    |
| CPU %        | 0.00%    |
| PIDs         | 3        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8022/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    11.05ms   13.70ms 273.42ms   87.65%
    Req/Sec     7.52k     1.38k   10.49k    80.00%
  299291 requests in 20.00s, 3.17GB read
Requests/sec:  14961.55
Transfer/sec:    162.52MB
```
