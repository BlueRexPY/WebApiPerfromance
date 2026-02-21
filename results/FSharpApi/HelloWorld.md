# F# .NET API — Hello World Benchmark

**Tested**: 2026-02-21 07:18:18 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8019/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 68,189.77 |
| Avg Latency | 4.53ms |
| Max Latency | 81.18ms |
| Total Requests | 1,364,134 |
| Transfer/sec | 12.10MB |
| Port | 8019 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 4.53ms | 10.46ms | 81.18ms | 93.20% |
| Req/Sec | 34.27k | 13.21k | 85.16k | 73.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 31.17MiB |
| Memory Limit | 1GiB |
| Memory % | 3.04% |
| CPU % | 0.04% |
| PIDs | 23 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8019/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.53ms   10.46ms  81.18ms   93.20%
    Req/Sec    34.27k    13.21k   85.16k    73.75%
  1364134 requests in 20.00s, 241.97MB read
Requests/sec:  68189.77
Transfer/sec:     12.10MB
```
