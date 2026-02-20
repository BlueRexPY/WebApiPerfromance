# Java Spring Boot — PostgreSQL Orders Benchmark

**Tested**: 2026-02-19 07:39:03 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8009/postgresql/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 747.27\* |
| Avg Latency | 187.61ms |
| Max Latency | 1.98s |
| Total Requests | 14,971 |
| Transfer/sec | 8.52MB |
| Port | 8009 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 187.61ms | 198.83ms | 1.98s | 90.17% |
| Req/Sec | 382.02 | 266.56 | 1.08k | 63.61% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 257MiB |
| Memory Limit | 1GiB |
| Memory % | 25.10% |
| CPU % | 0.13% |
| PIDs | 32 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8009/postgresql/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   187.61ms  198.83ms   1.98s    90.17%
    Req/Sec   382.02    266.56     1.08k    63.61%
  14971 requests in 20.03s, 170.71MB read
  Socket errors: connect 0, read 0, write 0, timeout 48
Requests/sec:    747.27
Transfer/sec:      8.52MB
```
