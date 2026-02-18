# Fastify API — Orders Benchmark

**Tested**: 2026-02-18 04:36:59 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8003/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 1,502.87 |
| Avg Latency    | 88.97ms  |
| Max Latency    | 1.85s    |
| Total Requests | 30,077   |
| Transfer/sec   | 16.13MB  |
| Port           | 8003     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max   | +/- Stdev |
| ------- | ------- | ------- | ----- | --------- |
| Latency | 88.97ms | 97.84ms | 1.85s | 97.78%    |
| Req/Sec | 755.30  | 294.08  | 1.40k | 57.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 45.64MiB |
| Memory Limit | 1GiB     |
| Memory %     | 4.46%    |
| CPU %        | 0.01%    |
| PIDs         | 11       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8003/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    88.97ms   97.84ms   1.85s    97.78%
    Req/Sec   755.30    294.08     1.40k    57.00%
  30077 requests in 20.01s, 322.78MB read
Requests/sec:   1502.87
Transfer/sec:     16.13MB
```
