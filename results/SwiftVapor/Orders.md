# Swift Vapor — Orders Benchmark

**Tested**: 2026-02-18 03:32:00 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8012/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 842.21\* |
| Avg Latency | 164.67ms |
| Max Latency | 1.14s |
| Total Requests | 16,880 |
| Transfer/sec | 8.64MB |
| Port | 8012 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 164.67ms | 147.81ms | 1.14s | 74.92% |
| Req/Sec | 423.15 | 165.30 | 0.86k | 66.92% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 19.59MiB |
| Memory Limit | 1GiB |
| Memory % | 1.91% |
| CPU % | 0.02% |
| PIDs | 40 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8012/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   164.67ms  147.81ms   1.14s    74.92%
    Req/Sec   423.15    165.30     0.86k    66.92%
  16880 requests in 20.04s, 173.17MB read
  Non-2xx or 3xx responses: 114
Requests/sec:    842.21
Transfer/sec:      8.64MB
```
