# C++ Drogon — Hello World Benchmark

**Tested**: 2026-02-18 03:44:42 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8017/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 40,079.92 |
| Avg Latency | 15.84ms |
| Max Latency | 92.62ms |
| Total Requests | 802,993 |
| Transfer/sec | 6.57MB |
| Port | 8017 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 15.84ms | 22.57ms | 92.62ms | 80.48% |
| Req/Sec | 20.16k | 10.76k | 64.18k | 83.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 39.84MiB |
| Memory Limit | 1GiB |
| Memory % | 3.89% |
| CPU % | 203.13% |
| PIDs | 47 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8017/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    15.84ms   22.57ms  92.62ms   80.48%
    Req/Sec    20.16k    10.76k   64.18k    83.50%
  802993 requests in 20.03s, 131.72MB read
Requests/sec:  40079.92
Transfer/sec:      6.57MB
```
