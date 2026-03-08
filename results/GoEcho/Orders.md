# Go Echo — Orders Benchmark

**Tested**: 2026-03-08 22:53:28 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8096/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 5,848.89 |
| Avg Latency    | 33.62ms  |
| Max Latency    | 890.00ms |
| Total Requests | 117,124  |
| Transfer/sec   | 64.13MB  |
| Port           | 8096     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 33.62ms | 46.59ms | 890.00ms | 86.97%    |
| Req/Sec | 2.94k   | 1.19k   | 5.47k    | 62.00%    |

## Resource Usage

| Metric       | Value   |
| ------------ | ------- |
| Memory Usage | 55.9MiB |
| Memory Limit | 1GiB    |
| Memory %     | 5.46%   |
| CPU %        | 0.00%   |
| PIDs         | 51      |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8096/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    33.62ms   46.59ms 890.00ms   86.97%
    Req/Sec     2.94k     1.19k    5.47k    62.00%
  117124 requests in 20.02s, 1.25GB read
Requests/sec:   5848.89
Transfer/sec:     64.13MB
```
