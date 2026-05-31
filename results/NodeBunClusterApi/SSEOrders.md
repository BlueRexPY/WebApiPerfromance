# JS Node Bun Cluster — SSE Orders Benchmark

**Tested**: 2026-05-31 17:38:04 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8047/sse/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 4,080.44 |
| Avg Latency | 30.14ms |
| Max Latency | 336.11ms |
| Total Requests | 81,621 |
| Transfer/sec | 47.42MB |
| Port | 8047 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 30.14ms | 15.29ms | 336.11ms | 91.21% |
| Req/Sec | 2.05k | 287.41 | 2.51k | 84.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 223.7MiB |
| Memory Limit | 1GiB |
| Memory % | 21.85% |
| CPU % | 5.10% |
| PIDs | 51 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8047/sse/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    30.14ms   15.29ms 336.11ms   91.21%
    Req/Sec     2.05k   287.41     2.51k    84.00%
  81621 requests in 20.00s, 0.93GB read
Requests/sec:   4080.44
Transfer/sec:     47.42MB
```
