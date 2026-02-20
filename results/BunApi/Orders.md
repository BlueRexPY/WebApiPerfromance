# Bun API — Orders Benchmark

**Tested**: 2026-02-20 03:23:04 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 15,168.57 |
| Avg Latency | 7.91ms |
| Max Latency | 25.50ms |
| Total Requests | 303,448 |
| Transfer/sec | 161.87MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 7.91ms | 681.61us | 25.50ms | 93.33% |
| Req/Sec | 7.62k | 302.03 | 8.28k | 67.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 71.4MiB |
| Memory Limit | 1GiB |
| Memory % | 6.97% |
| CPU % | 0.67% |
| PIDs | 16 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     7.91ms  681.61us  25.50ms   93.33%
    Req/Sec     7.62k   302.03     8.28k    67.25%
  303448 requests in 20.01s, 3.16GB read
Requests/sec:  15168.57
Transfer/sec:    161.87MB
```
