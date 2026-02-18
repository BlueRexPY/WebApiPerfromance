# Bun API — Orders Benchmark

**Tested**: 2026-02-18 02:27:22 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 14,309.52 |
| Avg Latency    | 8.38ms    |
| Max Latency    | 26.66ms   |
| Total Requests | 286,237   |
| Transfer/sec   | 152.71MB  |
| Port           | 8002      |

## Thread Stats

| Stat    | Avg    | Stdev    | Max     | +/- Stdev |
| ------- | ------ | -------- | ------- | --------- |
| Latency | 8.38ms | 655.35us | 26.66ms | 91.55%    |
| Req/Sec | 7.19k  | 228.69   | 7.74k   | 68.25%    |

## Resource Usage

| Metric       | Value   |
| ------------ | ------- |
| Memory Usage | 22.9MiB |
| Memory Limit | 1GiB    |
| Memory %     | 2.24%   |
| CPU %        | 0.60%   |
| PIDs         | 17      |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     8.38ms  655.35us  26.66ms   91.55%
    Req/Sec     7.19k   228.69     7.74k    68.25%
  286237 requests in 20.00s, 2.98GB read
Requests/sec:  14309.52
Transfer/sec:    152.71MB
```
