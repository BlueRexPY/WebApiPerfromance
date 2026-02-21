# JS Node uWS — Orders Benchmark

**Tested**: 2026-02-21 13:41:50 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8064/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,239.11 |
| Avg Latency    | 37.44ms  |
| Max Latency    | 309.31ms |
| Total Requests | 64,792   |
| Transfer/sec   | 34.62MB  |
| Port           | 8064     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 37.44ms | 13.42ms | 309.31ms | 81.85%    |
| Req/Sec | 1.63k   | 178.50  | 1.89k    | 89.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 43.41MiB |
| Memory Limit | 1GiB     |
| Memory %     | 4.24%    |
| CPU %        | 0.06%    |
| PIDs         | 11       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8064/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    37.44ms   13.42ms 309.31ms   81.85%
    Req/Sec     1.63k   178.50     1.89k    89.75%
  64792 requests in 20.00s, 692.49MB read
Requests/sec:   3239.11
Transfer/sec:     34.62MB
```
