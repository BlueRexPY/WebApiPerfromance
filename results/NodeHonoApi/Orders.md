# JS Hono — Orders Benchmark

**Tested**: 2026-02-21 05:31:09 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8039/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,068.89 |
| Avg Latency    | 40.59ms  |
| Max Latency    | 706.47ms |
| Total Requests | 61,399   |
| Transfer/sec   | 32.89MB  |
| Port           | 8039     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 40.59ms | 24.70ms | 706.47ms | 98.66%    |
| Req/Sec | 1.54k   | 123.49  | 1.83k    | 89.50%    |

## Resource Usage

| Metric       | Value   |
| ------------ | ------- |
| Memory Usage | 49.7MiB |
| Memory Limit | 1GiB    |
| Memory %     | 4.85%   |
| CPU %        | 0.02%   |
| PIDs         | 11      |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8039/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    40.59ms   24.70ms 706.47ms   98.66%
    Req/Sec     1.54k   123.49     1.83k    89.50%
  61399 requests in 20.01s, 657.98MB read
Requests/sec:   3068.89
Transfer/sec:     32.89MB
```
