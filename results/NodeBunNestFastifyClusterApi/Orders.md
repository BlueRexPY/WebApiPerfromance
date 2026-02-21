# JS Bun NestJS Fastify Cluster — Orders Benchmark

**Tested**: 2026-02-21 11:49:34 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8060/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 6,619.76 |
| Avg Latency | 19.69ms |
| Max Latency | 321.59ms |
| Total Requests | 132,426 |
| Transfer/sec | 70.74MB |
| Port | 8060 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 19.69ms | 18.15ms | 321.59ms | 96.57% |
| Req/Sec | 3.33k | 511.73 | 4.06k | 88.47% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 182MiB |
| Memory Limit | 1GiB |
| Memory % | 17.77% |
| CPU % | 8.99% |
| PIDs | 86 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8060/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    19.69ms   18.15ms 321.59ms   96.57%
    Req/Sec     3.33k   511.73     4.06k    88.47%
  132426 requests in 20.00s, 1.38GB read
Requests/sec:   6619.76
Transfer/sec:     70.74MB
```
