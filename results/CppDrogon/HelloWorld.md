# C++ Drogon — Hello World Benchmark

**Tested**: 2026-02-18 03:37:02 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8017/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 87,762.42 |
| Avg Latency | 11.69ms |
| Max Latency | 66.54ms |
| Total Requests | 1,756,354 |
| Transfer/sec | 14.40MB |
| Port | 8017 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 11.69ms | 18.00ms | 66.54ms | 80.79% |
| Req/Sec | 44.12k | 12.55k | 71.28k | 62.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 9.484MiB |
| Memory Limit | 1GiB |
| Memory % | 0.93% |
| CPU % | 0.04% |
| PIDs | 47 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8017/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    11.69ms   18.00ms  66.54ms   80.79%
    Req/Sec    44.12k    12.55k   71.28k    62.25%
  1756354 requests in 20.01s, 288.10MB read
Requests/sec:  87762.42
Transfer/sec:     14.40MB
```
