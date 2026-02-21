# JS Bun Hono Cluster — Orders Benchmark

**Tested**: 2026-02-21 11:46:01 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8057/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 27,308.21 |
| Avg Latency    | 4.41ms    |
| Max Latency    | 22.64ms   |
| Total Requests | 546,327   |
| Transfer/sec   | 291.79MB  |
| Port           | 8057      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 4.41ms | 1.19ms | 22.64ms | 91.09%    |
| Req/Sec | 13.72k | 637.73 | 15.33k  | 64.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 60.23MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.88%    |
| CPU %        | 1.51%    |
| PIDs         | 51       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8057/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.41ms    1.19ms  22.64ms   91.09%
    Req/Sec    13.72k   637.73    15.33k    64.25%
  546327 requests in 20.01s, 5.70GB read
Requests/sec:  27308.21
Transfer/sec:    291.79MB
```
