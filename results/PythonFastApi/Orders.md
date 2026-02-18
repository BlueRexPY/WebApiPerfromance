# Python FastAPI — Orders Benchmark

**Tested**: 2026-02-18 04:24:04 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8004/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,316.96 |
| Avg Latency | 36.78ms |
| Max Latency | 174.61ms |
| Total Requests | 66,358 |
| Transfer/sec | 36.08MB |
| Port | 8004 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 36.78ms | 25.34ms | 174.61ms | 68.36% |
| Req/Sec | 1.67k | 193.01 | 2.01k | 71.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 201.9MiB |
| Memory Limit | 1GiB |
| Memory % | 19.72% |
| CPU % | 0.49% |
| PIDs | 26 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8004/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    36.78ms   25.34ms 174.61ms   68.36%
    Req/Sec     1.67k   193.01     2.01k    71.75%
  66358 requests in 20.01s, 721.88MB read
Requests/sec:   3316.96
Transfer/sec:     36.08MB
```
