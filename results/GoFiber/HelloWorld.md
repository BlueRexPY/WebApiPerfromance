# Go Fiber — Hello World Benchmark

**Tested**: 2026-02-18 03:27:20 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8008/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 44,459.89 |
| Avg Latency | 16.73ms |
| Max Latency | 80.90ms |
| Total Requests | 890,398 |
| Transfer/sec | 6.36MB |
| Port | 8008 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 16.73ms | 23.21ms | 80.90ms | 79.59% |
| Req/Sec | 22.35k | 7.03k | 39.51k | 66.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 13.11MiB |
| Memory Limit | 1GiB |
| Memory % | 1.28% |
| CPU % | 0.02% |
| PIDs | 45 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8008/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    16.73ms   23.21ms  80.90ms   79.59%
    Req/Sec    22.35k     7.03k   39.51k    66.75%
  890398 requests in 20.03s, 127.37MB read
Requests/sec:  44459.89
Transfer/sec:      6.36MB
```
