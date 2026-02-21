# Go Fiber — Orders Benchmark

**Tested**: 2026-02-20 11:30:32 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8008/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 4,655.43 |
| Avg Latency    | 37.94ms  |
| Max Latency    | 732.37ms |
| Total Requests | 93,423   |
| Transfer/sec   | 51.02MB  |
| Port           | 8008     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 37.94ms | 48.88ms | 732.37ms | 84.75%    |
| Req/Sec | 2.34k   | 825.68  | 5.16k    | 67.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 54.62MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.33%    |
| CPU %        | 0.03%    |
| PIDs         | 47       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8008/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    37.94ms   48.88ms 732.37ms   84.75%
    Req/Sec     2.34k   825.68     5.16k    67.75%
  93423 requests in 20.07s, 1.00GB read
Requests/sec:   4655.43
Transfer/sec:     51.02MB
```
