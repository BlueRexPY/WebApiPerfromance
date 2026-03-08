# JS Bun Nitro — Orders Benchmark

**Tested**: 2026-03-08 22:42:32 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8094/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,619.69 |
| Avg Latency    | 36.16ms  |
| Max Latency    | 558.55ms |
| Total Requests | 72,483   |
| Transfer/sec   | 38.63MB  |
| Port           | 8094     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 36.16ms | 32.31ms | 558.55ms | 98.00%    |
| Req/Sec | 1.82k   | 303.61  | 2.36k    | 91.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 68.93MiB |
| Memory Limit | 1GiB     |
| Memory %     | 6.73%    |
| CPU %        | 1.17%    |
| PIDs         | 17       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8094/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    36.16ms   32.31ms 558.55ms   98.00%
    Req/Sec     1.82k   303.61     2.36k    91.50%
  72483 requests in 20.02s, 773.51MB read
Requests/sec:   3619.69
Transfer/sec:     38.63MB
```
