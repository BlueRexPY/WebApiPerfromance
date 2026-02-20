# .NET AOT — Hello World Benchmark

**Tested**: 2026-02-19 07:40:59 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8013/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 73,384.16 |
| Avg Latency | 6.20ms |
| Max Latency | 74.70ms |
| Total Requests | 1,469,123 |
| Transfer/sec | 13.02MB |
| Port | 8013 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 6.20ms | 13.22ms | 74.70ms | 89.87% |
| Req/Sec | 36.89k | 22.67k | 103.97k | 78.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 23.48MiB |
| Memory Limit | 1GiB |
| Memory % | 2.29% |
| CPU % | 0.02% |
| PIDs | 25 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8013/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     6.20ms   13.22ms  74.70ms   89.87%
    Req/Sec    36.89k    22.67k  103.97k    78.25%
  1469123 requests in 20.02s, 260.60MB read
Requests/sec:  73384.16
Transfer/sec:     13.02MB
```
