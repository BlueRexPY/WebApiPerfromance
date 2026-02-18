# C++ Drogon — Hello World Benchmark

**Tested**: 2026-02-18 03:13:57 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8017/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 44,330.15 |
| Avg Latency | 13.12ms |
| Max Latency | 70.81ms |
| Total Requests | 886,733 |
| Transfer/sec | 7.27MB |
| Port | 8017 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 13.12ms | 19.06ms | 70.81ms | 80.39% |
| Req/Sec | 22.28k | 7.25k | 63.31k | 88.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 9.184MiB |
| Memory Limit | 1GiB |
| Memory % | 0.90% |
| CPU % | 0.07% |
| PIDs | 47 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8017/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    13.12ms   19.06ms  70.81ms   80.39%
    Req/Sec    22.28k     7.25k   63.31k    88.00%
  886733 requests in 20.00s, 145.45MB read
Requests/sec:  44330.15
Transfer/sec:      7.27MB
```
