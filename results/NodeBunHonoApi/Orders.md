# JS Bun Hono — Orders Benchmark

**Tested**: 2026-02-21 11:38:58 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8051/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 15,884.25 |
| Avg Latency    | 7.55ms    |
| Max Latency    | 28.31ms   |
| Total Requests | 317,760   |
| Transfer/sec   | 169.72MB  |
| Port           | 8051      |

## Thread Stats

| Stat    | Avg    | Stdev    | Max     | +/- Stdev |
| ------- | ------ | -------- | ------- | --------- |
| Latency | 7.55ms | 585.69us | 28.31ms | 97.56%    |
| Req/Sec | 7.98k  | 191.28   | 8.33k   | 78.00%    |

## Resource Usage

| Metric       | Value   |
| ------------ | ------- |
| Memory Usage | 24.7MiB |
| Memory Limit | 1GiB    |
| Memory %     | 2.41%   |
| CPU %        | 0.83%   |
| PIDs         | 17      |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8051/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     7.55ms  585.69us  28.31ms   97.56%
    Req/Sec     7.98k   191.28     8.33k    78.00%
  317760 requests in 20.00s, 3.32GB read
Requests/sec:  15884.25
Transfer/sec:    169.72MB
```
