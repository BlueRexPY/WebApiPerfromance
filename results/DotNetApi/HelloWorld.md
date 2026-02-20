# .NET API — Hello World Benchmark

**Tested**: 2026-02-19 07:28:44 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 91,423.54 |
| Avg Latency | 5.53ms |
| Max Latency | 86.20ms |
| Total Requests | 1,829,480 |
| Transfer/sec | 16.22MB |
| Port | 8001 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 5.53ms | 13.11ms | 86.20ms | 90.94% |
| Req/Sec | 45.97k | 21.95k | 97.68k | 59.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 35.75MiB |
| Memory Limit | 1GiB |
| Memory % | 3.49% |
| CPU % | 3.10% |
| PIDs | 29 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     5.53ms   13.11ms  86.20ms   90.94%
    Req/Sec    45.97k    21.95k   97.68k    59.50%
  1829480 requests in 20.01s, 324.52MB read
Requests/sec:  91423.54
Transfer/sec:     16.22MB
```
