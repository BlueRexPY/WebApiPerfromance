# Ruby Rails — Orders Benchmark

**Tested**: 2026-02-18 02:43:07 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8015/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 345.32\* |
| Avg Latency    | 260.45ms |
| Max Latency    | 1.60s    |
| Total Requests | 6,925    |
| Transfer/sec   | 3.44MB   |
| Port           | 8015     |

## Thread Stats

| Stat    | Avg      | Stdev    | Max    | +/- Stdev |
| ------- | -------- | -------- | ------ | --------- |
| Latency | 260.45ms | 118.85ms | 1.60s  | 78.73%    |
| Req/Sec | 215.30   | 93.06    | 470.00 | 74.22%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 315.2MiB |
| Memory Limit | 1GiB     |
| Memory %     | 30.78%   |
| CPU %        | 1.24%    |
| PIDs         | 399      |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8015/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   260.45ms  118.85ms   1.60s    78.73%
    Req/Sec   215.30     93.06   470.00     74.22%
  6925 requests in 20.05s, 68.93MB read
  Socket errors: connect 0, read 0, write 0, timeout 119
  Non-2xx or 3xx responses: 557
Requests/sec:    345.32
Transfer/sec:      3.44MB
```
