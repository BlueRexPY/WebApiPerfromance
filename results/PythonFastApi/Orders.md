# Python FastAPI — Orders Benchmark

**Tested**: 2026-02-20 11:07:35 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8004/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,385.60 |
| Avg Latency | 36.43ms |
| Max Latency | 90.21ms |
| Total Requests | 67,720 |
| Transfer/sec | 36.83MB |
| Port | 8004 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 36.43ms | 25.41ms | 90.21ms | 72.09% |
| Req/Sec | 1.70k | 106.83 | 2.29k | 81.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 219.2MiB |
| Memory Limit | 1GiB |
| Memory % | 21.40% |
| CPU % | 0.97% |
| PIDs | 26 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8004/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    36.43ms   25.41ms  90.21ms   72.09%
    Req/Sec     1.70k   106.83     2.29k    81.75%
  67720 requests in 20.00s, 736.70MB read
Requests/sec:   3385.60
Transfer/sec:     36.83MB
```
