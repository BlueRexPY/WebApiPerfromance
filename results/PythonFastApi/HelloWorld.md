# Python FastAPI — Hello World Benchmark

**Tested**: 2026-02-20 11:07:09 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8004/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 26,128.34 |
| Avg Latency | 12.14ms |
| Max Latency | 68.81ms |
| Total Requests | 522,898 |
| Transfer/sec | 3.79MB |
| Port | 8004 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 12.14ms | 16.22ms | 68.81ms | 81.03% |
| Req/Sec | 13.13k | 1.74k | 17.99k | 71.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 209.5MiB |
| Memory Limit | 1GiB |
| Memory % | 20.46% |
| CPU % | 1.01% |
| PIDs | 26 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8004/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    12.14ms   16.22ms  68.81ms   81.03%
    Req/Sec    13.13k     1.74k   17.99k    71.50%
  522898 requests in 20.01s, 75.80MB read
Requests/sec:  26128.34
Transfer/sec:      3.79MB
```
