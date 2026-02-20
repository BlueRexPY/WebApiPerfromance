# JS Bun — Hello World Benchmark

**Tested**: 2026-02-20 11:23:20 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 138,779.81 |
| Avg Latency | 0.99ms |
| Max Latency | 89.17ms |
| Total Requests | 2,775,838 |
| Transfer/sec | 17.87MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 0.99ms | 2.58ms | 89.17ms | 99.60% |
| Req/Sec | 69.74k | 6.49k | 78.78k | 85.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 61.32MiB |
| Memory Limit | 1GiB |
| Memory % | 5.99% |
| CPU % | 2.56% |
| PIDs | 16 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     0.99ms    2.58ms  89.17ms   99.60%
    Req/Sec    69.74k     6.49k   78.78k    85.00%
  2775838 requests in 20.00s, 357.38MB read
Requests/sec: 138779.81
Transfer/sec:     17.87MB
```
