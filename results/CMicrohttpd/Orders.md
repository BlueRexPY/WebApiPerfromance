# C Microhttpd — Orders Benchmark

**Tested**: 2026-02-18 03:38:31 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8018/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 7,885.34 |
| Avg Latency | 20.54ms |
| Max Latency | 82.12ms |
| Total Requests | 157,718 |
| Transfer/sec | 85.56MB |
| Port | 8018 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 20.54ms | 19.88ms | 82.12ms | 77.84% |
| Req/Sec | 3.96k | 1.16k | 7.59k | 69.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 3.148MiB |
| Memory Limit | 1GiB |
| Memory % | 0.31% |
| CPU % | 0.00% |
| PIDs | 9 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8018/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    20.54ms   19.88ms  82.12ms   77.84%
    Req/Sec     3.96k     1.16k    7.59k    69.00%
  157718 requests in 20.00s, 1.67GB read
Requests/sec:   7885.34
Transfer/sec:     85.56MB
```
