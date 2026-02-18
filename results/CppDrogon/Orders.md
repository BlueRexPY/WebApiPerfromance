# C++ Drogon — Orders Benchmark

**Tested**: 2026-02-18 04:52:25 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8017/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 2,169.70 |
| Avg Latency    | 58.65ms  |
| Max Latency    | 300.55ms |
| Total Requests | 43,500   |
| Transfer/sec   | 23.62MB  |
| Port           | 8017     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 58.65ms | 53.30ms | 300.55ms | 57.58%    |
| Req/Sec | 1.09k   | 380.14  | 2.16k    | 63.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 42.31MiB |
| Memory Limit | 1GiB     |
| Memory %     | 4.13%    |
| CPU %        | 3.50%    |
| PIDs         | 47       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8017/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    58.65ms   53.30ms 300.55ms   57.58%
    Req/Sec     1.09k   380.14     2.16k    63.00%
  43500 requests in 20.05s, 473.51MB read
Requests/sec:   2169.70
Transfer/sec:     23.62MB
```
