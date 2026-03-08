# JS Node AdonisJS — Orders Benchmark

**Tested**: 2026-03-08 22:33:08 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8088/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 2,558.87 |
| Avg Latency    | 48.73ms  |
| Max Latency    | 570.89ms |
| Total Requests | 51,192   |
| Transfer/sec   | 27.46MB  |
| Port           | 8088     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 48.73ms | 26.11ms | 570.89ms | 98.00%    |
| Req/Sec | 1.29k   | 177.36  | 1.48k    | 93.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 64.14MiB |
| Memory Limit | 1GiB     |
| Memory %     | 6.26%    |
| CPU %        | 0.03%    |
| PIDs         | 12       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8088/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    48.73ms   26.11ms 570.89ms   98.00%
    Req/Sec     1.29k   177.36     1.48k    93.00%
  51192 requests in 20.01s, 549.33MB read
Requests/sec:   2558.87
Transfer/sec:     27.46MB
```
