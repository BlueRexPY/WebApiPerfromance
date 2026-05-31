# JS Node Express — SSE Hello Benchmark

**Tested**: 2026-05-31 17:31:34 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8014/sse/hello`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 19,205.29 |
| Avg Latency | 8.21ms |
| Max Latency | 602.22ms |
| Total Requests | 384,118 |
| Transfer/sec | 4.73MB |
| Port | 8014 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 8.21ms | 24.30ms | 602.22ms | 99.08% |
| Req/Sec | 9.65k | 1.54k | 12.47k | 76.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 44.23MiB |
| Memory Limit | 1GiB |
| Memory % | 4.32% |
| CPU % | 0.01% |
| PIDs | 7 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8014/sse/hello
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     8.21ms   24.30ms 602.22ms   99.08%
    Req/Sec     9.65k     1.54k   12.47k    76.75%
  384118 requests in 20.00s, 94.51MB read
Requests/sec:  19205.29
Transfer/sec:      4.73MB
```
