# Python Django — Hello World Benchmark

**Tested**: 2026-02-20 11:17:21 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8016/`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,082.71\* |
| Avg Latency | 149.23ms |
| Max Latency | 1.69s |
| Total Requests | 21,723 |
| Transfer/sec | 319.34KB |
| Port | 8016 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 149.23ms | 188.57ms | 1.69s | 91.69% |
| Req/Sec | 566.07 | 306.12 | 2.14k | 80.99% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 437.3MiB |
| Memory Limit | 1GiB |
| Memory % | 42.71% |
| CPU % | 0.42% |
| PIDs | 98 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8016/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   149.23ms  188.57ms   1.69s    91.69%
    Req/Sec   566.07    306.12     2.14k    80.99%
  21723 requests in 20.06s, 6.26MB read
  Socket errors: connect 0, read 139, write 0, timeout 0
Requests/sec:   1082.71
Transfer/sec:    319.34KB
```
