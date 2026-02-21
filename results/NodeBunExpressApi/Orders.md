# JS Bun Express — Orders Benchmark

**Tested**: 2026-02-21 11:36:40 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8049/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 14,649.64 |
| Avg Latency    | 8.19ms    |
| Max Latency    | 39.19ms   |
| Total Requests | 293,110   |
| Transfer/sec   | 156.54MB  |
| Port           | 8049      |

## Thread Stats

| Stat    | Avg    | Stdev    | Max     | +/- Stdev |
| ------- | ------ | -------- | ------- | --------- |
| Latency | 8.19ms | 731.12us | 39.19ms | 93.96%    |
| Req/Sec | 7.36k  | 264.54   | 7.86k   | 84.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 58.61MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.72%    |
| CPU %        | 5.96%    |
| PIDs         | 17       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8049/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     8.19ms  731.12us  39.19ms   93.96%
    Req/Sec     7.36k   264.54     7.86k    84.50%
  293110 requests in 20.01s, 3.06GB read
Requests/sec:  14649.64
Transfer/sec:    156.54MB
```
