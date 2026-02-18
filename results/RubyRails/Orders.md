# Ruby Rails — Orders Benchmark

**Tested**: 2026-02-18 03:35:20 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8015/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 608.09\* |
| Avg Latency | 179.30ms |
| Max Latency | 1.84s |
| Total Requests | 12,176 |
| Transfer/sec | 6.07MB |
| Port | 8015 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 179.30ms | 86.29ms | 1.84s | 89.62% |
| Req/Sec | 328.36 | 96.00 | 505.00 | 76.34% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 301.5MiB |
| Memory Limit | 1GiB |
| Memory % | 29.44% |
| CPU % | 1.21% |
| PIDs | 399 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8015/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   179.30ms   86.29ms   1.84s    89.62%
    Req/Sec   328.36     96.00   505.00     76.34%
  12176 requests in 20.02s, 121.53MB read
  Socket errors: connect 0, read 0, write 0, timeout 115
  Non-2xx or 3xx responses: 949
Requests/sec:    608.09
Transfer/sec:      6.07MB
```
