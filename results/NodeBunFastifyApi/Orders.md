# JS Bun Fastify — Orders Benchmark

**Tested**: 2026-02-21 11:37:50 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8050/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 4,174.03 |
| Avg Latency | 32.39ms |
| Max Latency | 616.92ms |
| Total Requests | 83,500 |
| Transfer/sec | 44.60MB |
| Port | 8050 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 32.39ms | 35.50ms | 616.92ms | 97.93% |
| Req/Sec | 2.10k | 320.14 | 2.41k | 96.99% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 74.01MiB |
| Memory Limit | 1GiB |
| Memory % | 7.23% |
| CPU % | 9.36% |
| PIDs | 16 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8050/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    32.39ms   35.50ms 616.92ms   97.93%
    Req/Sec     2.10k   320.14     2.41k    96.99%
  83500 requests in 20.00s, 0.87GB read
Requests/sec:   4174.03
Transfer/sec:     44.60MB
```
