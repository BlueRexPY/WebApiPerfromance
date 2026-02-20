# Java Quarkus — Orders Benchmark

**Tested**: 2026-02-20 03:30:46 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8021/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 8,660.41 |
| Avg Latency | 27.97ms |
| Max Latency | 830.87ms |
| Total Requests | 173,299 |
| Transfer/sec | 91.50MB |
| Port | 8021 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 27.97ms | 70.30ms | 830.87ms | 97.62% |
| Req/Sec | 4.48k | 1.15k | 7.73k | 75.58% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 206.4MiB |
| Memory Limit | 1GiB |
| Memory % | 20.16% |
| CPU % | 2.06% |
| PIDs | 42 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8021/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    27.97ms   70.30ms 830.87ms   97.62%
    Req/Sec     4.48k     1.15k    7.73k    75.58%
  173299 requests in 20.01s, 1.79GB read
Requests/sec:   8660.41
Transfer/sec:     91.50MB
```
