# JS Bun Nitro Cluster — Orders Benchmark

**Tested**: 2026-03-08 22:43:44 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8095/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 5,586.04 |
| Avg Latency    | 26.23ms  |
| Max Latency    | 625.68ms |
| Total Requests | 111,825  |
| Transfer/sec   | 59.61MB  |
| Port           | 8095     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 26.23ms | 40.95ms | 625.68ms | 97.83%    |
| Req/Sec | 2.81k   | 529.71  | 3.49k    | 91.00%    |

## Resource Usage

| Metric       | Value  |
| ------------ | ------ |
| Memory Usage | 146MiB |
| Memory Limit | 1GiB   |
| Memory %     | 14.25% |
| CPU %        | 6.02%  |
| PIDs         | 45     |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8095/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    26.23ms   40.95ms 625.68ms   97.83%
    Req/Sec     2.81k   529.71     3.49k    91.00%
  111825 requests in 20.02s, 1.17GB read
Requests/sec:   5586.04
Transfer/sec:     59.61MB
```
