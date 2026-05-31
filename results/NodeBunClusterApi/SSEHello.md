# JS Node Bun Cluster — SSE Hello Benchmark

**Tested**: 2026-05-31 17:37:38 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8047/sse/hello`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 94,123.93 |
| Avg Latency | 1.68ms |
| Max Latency | 56.81ms |
| Total Requests | 1,882,803 |
| Transfer/sec | 17.23MB |
| Port | 8047 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 1.68ms | 2.51ms | 56.81ms | 94.26% |
| Req/Sec | 47.30k | 7.56k | 64.78k | 67.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 89.19MiB |
| Memory Limit | 1GiB |
| Memory % | 8.71% |
| CPU % | 2.97% |
| PIDs | 48 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8047/sse/hello
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.68ms    2.51ms  56.81ms   94.26%
    Req/Sec    47.30k     7.56k   64.78k    67.75%
  1882803 requests in 20.00s, 344.75MB read
Requests/sec:  94123.93
Transfer/sec:     17.23MB
```
