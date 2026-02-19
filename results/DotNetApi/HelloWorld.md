# .NET API — Hello World Benchmark

**Tested**: 2026-02-19 06:35:34 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 63,037.56 |
| Avg Latency | 7.47ms |
| Max Latency | 80.43ms |
| Total Requests | 1,262,021 |
| Transfer/sec | 11.18MB |
| Port | 8001 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 7.47ms | 14.76ms | 80.43ms | 87.87% |
| Req/Sec | 31.71k | 17.21k | 97.36k | 75.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 46.05MiB |
| Memory Limit | 1GiB |
| Memory % | 4.50% |
| CPU % | 1.10% |
| PIDs | 29 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     7.47ms   14.76ms  80.43ms   87.87%
    Req/Sec    31.71k    17.21k   97.36k    75.75%
  1262021 requests in 20.02s, 223.86MB read
Requests/sec:  63037.56
Transfer/sec:     11.18MB
```
