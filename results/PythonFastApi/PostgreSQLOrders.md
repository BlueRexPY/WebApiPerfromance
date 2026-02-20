# Python FastAPI — PostgreSQL Orders Benchmark

**Tested**: 2026-02-19 07:32:53 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8004/postgresql/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,546.70 |
| Avg Latency    | 34.96ms  |
| Max Latency    | 157.63ms |
| Total Requests | 70,943   |
| Transfer/sec   | 38.58MB  |
| Port           | 8004     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 34.96ms | 24.20ms | 157.63ms | 73.31%    |
| Req/Sec | 1.78k   | 150.36  | 2.62k    | 76.25%    |

## Resource Usage

| Metric       | Value  |
| ------------ | ------ |
| Memory Usage | 235MiB |
| Memory Limit | 1GiB   |
| Memory %     | 22.94% |
| CPU %        | 0.72%  |
| PIDs         | 26     |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8004/postgresql/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    34.96ms   24.20ms 157.63ms   73.31%
    Req/Sec     1.78k   150.36     2.62k    76.25%
  70943 requests in 20.00s, 771.76MB read
Requests/sec:   3546.70
Transfer/sec:     38.58MB
```
