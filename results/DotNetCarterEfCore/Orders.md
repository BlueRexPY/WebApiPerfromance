# C# Carter EF Core — Orders Benchmark

**Tested**: 2026-02-23 16:50:24 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8072/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 2,420.60 |
| Avg Latency    | 51.28ms  |
| Max Latency    | 309.41ms |
| Total Requests | 48,483   |
| Transfer/sec   | 25.72MB  |
| Port           | 8072     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 51.28ms | 44.15ms | 309.41ms | 52.84%    |
| Req/Sec | 1.22k   | 591.06  | 3.77k    | 80.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 83.34MiB |
| Memory Limit | 1GiB     |
| Memory %     | 8.14%    |
| CPU %        | 0.04%    |
| PIDs         | 23       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8072/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    51.28ms   44.15ms 309.41ms   52.84%
    Req/Sec     1.22k   591.06     3.77k    80.00%
  48483 requests in 20.03s, 515.08MB read
Requests/sec:   2420.60
Transfer/sec:     25.72MB
```
