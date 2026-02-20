# Haskell Servant — Orders Benchmark

**Tested**: 2026-02-20 11:03:51 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8006/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 796.44\* |
| Avg Latency | 135.25ms |
| Max Latency | 1.95s |
| Total Requests | 15,974 |
| Transfer/sec | 8.68MB |
| Port | 8006 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 135.25ms | 115.40ms | 1.95s | 96.57% |
| Req/Sec | 431.13 | 150.15 | 660.00 | 84.37% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 317.1MiB |
| Memory Limit | 1GiB |
| Memory % | 30.97% |
| CPU % | 0.36% |
| PIDs | 16 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8006/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   135.25ms  115.40ms   1.95s    96.57%
    Req/Sec   431.13    150.15   660.00     84.37%
  15974 requests in 20.06s, 174.12MB read
  Socket errors: connect 0, read 0, write 0, timeout 110
Requests/sec:    796.44
Transfer/sec:      8.68MB
```
