# F# API — Hello World Benchmark

**Tested**: 2026-02-20 03:08:42 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8019/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 68,313.43 |
| Avg Latency | 5.66ms |
| Max Latency | 81.19ms |
| Total Requests | 1,367,428 |
| Transfer/sec | 12.12MB |
| Port | 8019 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 5.66ms | 12.90ms | 81.19ms | 91.60% |
| Req/Sec | 34.35k | 15.82k | 101.29k | 69.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 39.94MiB |
| Memory Limit | 1GiB |
| Memory % | 3.90% |
| CPU % | 1.92% |
| PIDs | 30 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8019/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     5.66ms   12.90ms  81.19ms   91.60%
    Req/Sec    34.35k    15.82k  101.29k    69.75%
  1367428 requests in 20.02s, 242.56MB read
Requests/sec:  68313.43
Transfer/sec:     12.12MB
```
