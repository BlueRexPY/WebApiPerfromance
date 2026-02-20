# Ruby Sinatra — Orders Benchmark

**Tested**: 2026-02-20 06:04:11 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8033/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,246.67 |
| Avg Latency | 229.73ms |
| Max Latency | 1.18s |
| Total Requests | 24,955 |
| Transfer/sec | 13.52MB |
| Port | 8033 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 229.73ms | 281.33ms | 1.18s | 79.58% |
| Req/Sec | 629.39 | 228.08 | 2.05k | 89.70% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 66.74MiB |
| Memory Limit | 1GiB |
| Memory % | 6.52% |
| CPU % | 0.03% |
| PIDs | 48 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8033/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   229.73ms  281.33ms   1.18s    79.58%
    Req/Sec   629.39    228.08     2.05k    89.70%
  24955 requests in 20.02s, 270.71MB read
Requests/sec:   1246.67
Transfer/sec:     13.52MB
```
