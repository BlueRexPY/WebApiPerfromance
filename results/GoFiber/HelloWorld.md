# Go Fiber — Hello World Benchmark

**Tested**: 2026-02-19 07:36:17 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8008/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 40,185.53 |
| Avg Latency | 17.76ms |
| Max Latency | 85.19ms |
| Total Requests | 805,883 |
| Transfer/sec | 5.75MB |
| Port | 8008 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 17.76ms | 24.29ms | 85.19ms | 79.43% |
| Req/Sec | 20.19k | 7.77k | 41.32k | 68.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 14.22MiB |
| Memory Limit | 1GiB |
| Memory % | 1.39% |
| CPU % | 0.02% |
| PIDs | 45 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8008/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    17.76ms   24.29ms  85.19ms   79.43%
    Req/Sec    20.19k     7.77k   41.32k    68.25%
  805883 requests in 20.05s, 115.28MB read
Requests/sec:  40185.53
Transfer/sec:      5.75MB
```
