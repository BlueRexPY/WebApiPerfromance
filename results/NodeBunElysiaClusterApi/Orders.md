# JS Bun Elysia Cluster — Orders Benchmark

**Tested**: 2026-03-08 22:31:49 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8087/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 27,539.99 |
| Avg Latency    | 4.38ms    |
| Max Latency    | 29.04ms   |
| Total Requests | 550,886   |
| Transfer/sec   | 294.26MB  |
| Port           | 8087      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 4.38ms | 1.15ms | 29.04ms | 93.45%    |
| Req/Sec | 13.84k | 708.58 | 15.29k  | 78.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 116.1MiB |
| Memory Limit | 1GiB     |
| Memory %     | 11.34%   |
| CPU %        | 1.85%    |
| PIDs         | 90       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8087/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.38ms    1.15ms  29.04ms   93.45%
    Req/Sec    13.84k   708.58    15.29k    78.75%
  550886 requests in 20.00s, 5.75GB read
Requests/sec:  27539.99
Transfer/sec:    294.26MB
```
