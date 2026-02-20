# Kotlin Ktor — Orders Benchmark

**Tested**: 2026-02-20 05:31:03 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8027/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,026.68\* |
| Avg Latency | 139.66ms |
| Max Latency | 1.29s |
| Total Requests | 20,590 |
| Transfer/sec | 11.12MB |
| Port | 8027 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 139.66ms | 178.84ms | 1.29s | 86.22% |
| Req/Sec | 660.62 | 566.64 | 2.33k | 65.38% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 213.5MiB |
| Memory Limit | 1GiB |
| Memory % | 20.85% |
| CPU % | 11.95% |
| PIDs | 90 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8027/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   139.66ms  178.84ms   1.29s    86.22%
    Req/Sec   660.62    566.64     2.33k    65.38%
  20590 requests in 20.05s, 222.93MB read
  Socket errors: connect 0, read 279735, write 232298, timeout 0
Requests/sec:   1026.68
Transfer/sec:     11.12MB
```
