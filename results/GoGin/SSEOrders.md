# Go Gin — SSE Orders Benchmark

**Tested**: 2026-05-31 18:39:06 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8066/sse/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 5,252.79 |
| Avg Latency | 34.85ms |
| Max Latency | 606.30ms |
| Total Requests | 105,362 |
| Transfer/sec | 61.63MB |
| Port | 8066 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 34.85ms | 44.84ms | 606.30ms | 84.74% |
| Req/Sec | 2.64k | 447.78 | 3.85k | 79.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 74.04MiB |
| Memory Limit | 1GiB |
| Memory % | 7.23% |
| CPU % | 0.00% |
| PIDs | 47 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8066/sse/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    34.85ms   44.84ms 606.30ms   84.74%
    Req/Sec     2.64k   447.78     3.85k    79.50%
  105362 requests in 20.06s, 1.21GB read
Requests/sec:   5252.79
Transfer/sec:     61.63MB
```
