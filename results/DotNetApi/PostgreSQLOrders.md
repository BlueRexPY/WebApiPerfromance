# .NET API — PostgreSQL Orders Benchmark

**Tested**: 2026-02-19 06:36:00 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/postgresql/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 8,544.47 |
| Avg Latency    | 21.23ms  |
| Max Latency    | 119.86ms |
| Total Requests | 171,119  |
| Transfer/sec   | 90.78MB  |
| Port           | 8001     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 21.23ms | 22.42ms | 119.86ms | 79.65%    |
| Req/Sec | 4.30k   | 1.58k   | 9.64k    | 77.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 70.07MiB |
| Memory Limit | 1GiB     |
| Memory %     | 6.84%    |
| CPU %        | 1.40%    |
| PIDs         | 27       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/postgresql/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    21.23ms   22.42ms 119.86ms   79.65%
    Req/Sec     4.30k     1.58k    9.64k    77.00%
  171119 requests in 20.03s, 1.78GB read
Requests/sec:   8544.47
Transfer/sec:     90.78MB
```
