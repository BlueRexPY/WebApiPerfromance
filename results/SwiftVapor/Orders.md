# Swift Vapor — Orders Benchmark

**Tested**: 2026-02-18 03:00:23 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8012/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 674.79   |
| Avg Latency    | 191.26ms |
| Max Latency    | 879.95ms |
| Total Requests | 13,520   |
| Transfer/sec   | 6.97MB   |
| Port           | 8012     |

## Thread Stats

| Stat    | Avg      | Stdev    | Max      | +/- Stdev |
| ------- | -------- | -------- | -------- | --------- |
| Latency | 191.26ms | 139.16ms | 879.95ms | 73.27%    |
| Req/Sec | 345.51   | 194.48   | 1.03k    | 71.09%    |

## Resource Usage

| Metric       | Value   |
| ------------ | ------- |
| Memory Usage | 24.9MiB |
| Memory Limit | 1GiB    |
| Memory %     | 2.43%   |
| CPU %        | 23.92%  |
| PIDs         | 40      |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8012/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   191.26ms  139.16ms 879.95ms   73.27%
    Req/Sec   345.51    194.48     1.03k    71.09%
  13520 requests in 20.04s, 139.63MB read
Requests/sec:    674.79
Transfer/sec:      6.97MB
```
