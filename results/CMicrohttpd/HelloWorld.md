# C Microhttpd — Hello World Benchmark

**Tested**: 2026-02-20 03:34:21 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8018/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 59,634.69 |
| Avg Latency | 12.47ms |
| Max Latency | 70.84ms |
| Total Requests | 1,194,125 |
| Transfer/sec | 7.68MB |
| Port | 8018 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 12.47ms | 18.63ms | 70.84ms | 80.59% |
| Req/Sec | 29.98k | 16.53k | 77.41k | 80.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 11.93MiB |
| Memory Limit | 1GiB |
| Memory % | 1.17% |
| CPU % | 0.00% |
| PIDs | 9 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8018/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    12.47ms   18.63ms  70.84ms   80.59%
    Req/Sec    29.98k    16.53k   77.41k    80.50%
  1194125 requests in 20.02s, 153.74MB read
Requests/sec:  59634.69
Transfer/sec:      7.68MB
```
