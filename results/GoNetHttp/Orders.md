# Go net/http — Orders Benchmark

**Tested**: 2026-02-20 05:54:25 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8032/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 4,927.33 |
| Avg Latency    | 36.62ms  |
| Max Latency    | 677.12ms |
| Total Requests | 98,605   |
| Transfer/sec   | 54.02MB  |
| Port           | 8032     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 36.62ms | 46.98ms | 677.12ms | 84.33%    |
| Req/Sec | 2.48k   | 1.03k   | 5.75k    | 71.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 59.77MiB |
| Memory Limit | 512MiB   |
| Memory %     | 11.67%   |
| CPU %        | 0.07%    |
| PIDs         | 48       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8032/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    36.62ms   46.98ms 677.12ms   84.33%
    Req/Sec     2.48k     1.03k    5.75k    71.75%
  98605 requests in 20.01s, 1.06GB read
Requests/sec:   4927.33
Transfer/sec:     54.02MB
```
