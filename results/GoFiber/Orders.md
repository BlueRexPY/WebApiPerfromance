# Go Fiber — Orders Benchmark

**Tested**: 2026-02-18 03:27:46 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8008/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 7,132.90 |
| Avg Latency | 28.75ms |
| Max Latency | 368.33ms |
| Total Requests | 142,761 |
| Transfer/sec | 78.17MB |
| Port | 8008 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 28.75ms | 32.80ms | 368.33ms | 79.48% |
| Req/Sec | 3.58k | 0.94k | 6.13k | 68.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 55.62MiB |
| Memory Limit | 1GiB |
| Memory % | 5.43% |
| CPU % | 0.01% |
| PIDs | 47 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8008/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    28.75ms   32.80ms 368.33ms   79.48%
    Req/Sec     3.58k     0.94k    6.13k    68.75%
  142761 requests in 20.01s, 1.53GB read
Requests/sec:   7132.90
Transfer/sec:     78.17MB
```
