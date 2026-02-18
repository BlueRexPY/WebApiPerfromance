# C++ Drogon — Hello World Benchmark

**Tested**: 2026-02-18 02:58:27 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8017/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 54,436.33 |
| Avg Latency | 13.25ms |
| Max Latency | 70.48ms |
| Total Requests | 1,089,551 |
| Transfer/sec | 8.93MB |
| Port | 8017 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 13.25ms | 19.45ms | 70.48ms | 80.33% |
| Req/Sec | 27.37k | 14.02k | 73.54k | 83.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 7.906MiB |
| Memory Limit | 1GiB |
| Memory % | 0.77% |
| CPU % | 0.07% |
| PIDs | 35 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8017/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    13.25ms   19.45ms  70.48ms   80.33%
    Req/Sec    27.37k    14.02k   73.54k    83.00%
  1089551 requests in 20.02s, 178.72MB read
Requests/sec:  54436.33
Transfer/sec:      8.93MB
```
