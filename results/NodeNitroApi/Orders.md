# JS Node Nitro — Orders Benchmark

**Tested**: 2026-03-08 22:36:22 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8089/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,525.11 |
| Avg Latency    | 37.25ms  |
| Max Latency    | 907.33ms |
| Total Requests | 70,589   |
| Transfer/sec   | 37.78MB  |
| Port           | 8089     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 37.25ms | 39.81ms | 907.33ms | 98.63%    |
| Req/Sec | 1.77k   | 196.07  | 2.22k    | 73.75%    |

## Resource Usage

| Metric       | Value   |
| ------------ | ------- |
| Memory Usage | 52.5MiB |
| Memory Limit | 1GiB    |
| Memory %     | 5.13%   |
| CPU %        | 0.04%   |
| PIDs         | 11      |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8089/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    37.25ms   39.81ms 907.33ms   98.63%
    Req/Sec     1.77k   196.07     2.22k    73.75%
  70589 requests in 20.02s, 756.46MB read
Requests/sec:   3525.11
Transfer/sec:     37.78MB
```
