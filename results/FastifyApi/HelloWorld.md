# Fastify API — Hello World Benchmark

**Tested**: 2026-02-18 03:21:48 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8003/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 77,541.28 |
| Avg Latency | 1.95ms |
| Max Latency | 250.10ms |
| Total Requests | 1,551,078 |
| Transfer/sec | 14.64MB |
| Port | 8003 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 1.95ms | 6.46ms | 250.10ms | 99.51% |
| Req/Sec | 38.98k | 7.47k | 48.95k | 78.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 27.5MiB |
| Memory Limit | 1GiB |
| Memory % | 2.69% |
| CPU % | 0.01% |
| PIDs | 7 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8003/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.95ms    6.46ms 250.10ms   99.51%
    Req/Sec    38.98k     7.47k   48.95k    78.50%
  1551078 requests in 20.00s, 292.89MB read
Requests/sec:  77541.28
Transfer/sec:     14.64MB
```
