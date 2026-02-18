# Python FastAPI — Orders Benchmark

**Tested**: 2026-02-18 02:29:50 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8004/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,162.28 |
| Avg Latency    | 38.75ms  |
| Max Latency    | 166.03ms |
| Total Requests | 63,290   |
| Transfer/sec   | 34.40MB  |
| Port           | 8004     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 38.75ms | 27.41ms | 166.03ms | 59.22%    |
| Req/Sec | 1.59k   | 242.37  | 2.30k    | 76.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 201.4MiB |
| Memory Limit | 1GiB     |
| Memory %     | 19.66%   |
| CPU %        | 0.44%    |
| PIDs         | 26       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8004/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    38.75ms   27.41ms 166.03ms   59.22%
    Req/Sec     1.59k   242.37     2.30k    76.25%
  63290 requests in 20.01s, 688.50MB read
Requests/sec:   3162.28
Transfer/sec:     34.40MB
```
