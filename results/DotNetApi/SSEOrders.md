# C# .NET API — SSE Orders Benchmark

**Tested**: 2026-05-31 17:24:59 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/sse/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 11,747.36 |
| Avg Latency | 11.75ms |
| Max Latency | 105.09ms |
| Total Requests | 235,125 |
| Transfer/sec | 139.69MB |
| Port | 8001 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 11.75ms | 9.22ms | 105.09ms | 86.85% |
| Req/Sec | 5.90k | 1.14k | 8.40k | 79.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 61.12MiB |
| Memory Limit | 1GiB |
| Memory % | 5.97% |
| CPU % | 0.01% |
| PIDs | 23 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/sse/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    11.75ms    9.22ms 105.09ms   86.85%
    Req/Sec     5.90k     1.14k    8.40k    79.25%
  235125 requests in 20.02s, 2.73GB read
Requests/sec:  11747.36
Transfer/sec:    139.69MB
```
