# Fastify API — Orders Benchmark

**Tested**: 2026-02-18 04:22:51 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8003/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,104.20 |
| Avg Latency | 39.82ms |
| Max Latency | 426.70ms |
| Total Requests | 62,111 |
| Transfer/sec | 33.31MB |
| Port | 8003 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 39.82ms | 19.18ms | 426.70ms | 97.95% |
| Req/Sec | 1.56k | 211.25 | 1.89k | 87.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 47.31MiB |
| Memory Limit | 1GiB |
| Memory % | 4.62% |
| CPU % | 0.01% |
| PIDs | 11 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8003/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    39.82ms   19.18ms 426.70ms   97.95%
    Req/Sec     1.56k   211.25     1.89k    87.75%
  62111 requests in 20.01s, 666.56MB read
Requests/sec:   3104.20
Transfer/sec:     33.31MB
```
