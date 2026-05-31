# Go Fiber — SSE Hello Benchmark

**Tested**: 2026-05-31 18:35:55 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8008/sse/hello`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 37,084.54 |
| Avg Latency | 8.42ms |
| Max Latency | 79.59ms |
| Total Requests | 744,604 |
| Transfer/sec | 8.84MB |
| Port | 8008 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 8.42ms | 14.21ms | 79.59ms | 87.28% |
| Req/Sec | 18.69k | 3.00k | 32.92k | 73.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 19MiB |
| Memory Limit | 1GiB |
| Memory % | 1.86% |
| CPU % | 0.04% |
| PIDs | 42 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8008/sse/hello
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     8.42ms   14.21ms  79.59ms   87.28%
    Req/Sec    18.69k     3.00k   32.92k    73.00%
  744604 requests in 20.08s, 177.53MB read
Requests/sec:  37084.54
Transfer/sec:      8.84MB
```
