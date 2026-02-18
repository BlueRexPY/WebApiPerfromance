# Java Spring Boot — Orders Benchmark

**Tested**: 2026-02-18 03:17:36 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8009/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 633.20 |
| Avg Latency | 219.87ms |
| Max Latency | 1.72s |
| Total Requests | 12,685 |
| Transfer/sec | 7.22MB |
| Port | 8009 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 219.87ms | 192.03ms | 1.72s | 86.32% |
| Req/Sec | 319.66 | 221.65 | 1.04k | 64.32% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 219.4MiB |
| Memory Limit | 1GiB |
| Memory % | 21.43% |
| CPU % | 14.53% |
| PIDs | 26 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8009/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   219.87ms  192.03ms   1.72s    86.32%
    Req/Sec   319.66    221.65     1.04k    64.32%
  12685 requests in 20.03s, 144.63MB read
Requests/sec:    633.20
Transfer/sec:      7.22MB
```
