# JS Fastify — Orders Benchmark

**Tested**: 2026-02-20 11:08:38 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8003/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,846.61 |
| Avg Latency | 35.55ms |
| Max Latency | 701.60ms |
| Total Requests | 76,981 |
| Transfer/sec | 41.28MB |
| Port | 8003 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 35.55ms | 42.47ms | 701.60ms | 97.96% |
| Req/Sec | 1.93k | 308.43 | 2.21k | 96.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 108.2MiB |
| Memory Limit | 1GiB |
| Memory % | 10.57% |
| CPU % | 0.02% |
| PIDs | 11 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8003/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    35.55ms   42.47ms 701.60ms   97.96%
    Req/Sec     1.93k   308.43     2.21k    96.00%
  76981 requests in 20.01s, 826.14MB read
Requests/sec:   3846.61
Transfer/sec:     41.28MB
```
