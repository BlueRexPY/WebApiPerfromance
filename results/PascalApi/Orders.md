# Pascal fpWeb — Orders Benchmark

**Tested**: 2026-02-25 07:12:35 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8082/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 322.28\* |
| Avg Latency | 393.40ms |
| Max Latency | 2.00s |
| Total Requests | 6,450 |
| Transfer/sec | 4.01MB |
| Port | 8082 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 393.40ms | 413.84ms | 2.00s | 84.30% |
| Req/Sec | 161.79 | 61.35 | 545.00 | 85.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 5.184MiB |
| Memory Limit | 1GiB |
| Memory % | 0.51% |
| CPU % | 0.00% |
| PIDs | 1 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8082/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   393.40ms  413.84ms   2.00s    84.30%
    Req/Sec   161.79     61.35   545.00     85.75%
  6450 requests in 20.01s, 80.31MB read
  Socket errors: connect 0, read 6448, write 0, timeout 112
Requests/sec:    322.28
Transfer/sec:      4.01MB
```
