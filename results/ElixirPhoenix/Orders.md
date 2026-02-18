# Elixir Phoenix — Orders Benchmark

**Tested**: 2026-02-18 04:41:30 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8007/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,411.77 |
| Avg Latency    | 35.18ms  |
| Max Latency    | 110.29ms |
| Total Requests | 68,284   |
| Transfer/sec   | 37.45MB  |
| Port           | 8007     |

## Thread Stats

| Stat    | Avg     | Stdev  | Max      | +/- Stdev |
| ------- | ------- | ------ | -------- | --------- |
| Latency | 35.18ms | 7.31ms | 110.29ms | 89.68%    |
| Req/Sec | 1.71k   | 218.93 | 2.07k    | 81.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 187.7MiB |
| Memory Limit | 1GiB     |
| Memory %     | 18.33%   |
| CPU %        | 0.20%    |
| PIDs         | 85       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8007/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    35.18ms    7.31ms 110.29ms   89.68%
    Req/Sec     1.71k   218.93     2.07k    81.25%
  68284 requests in 20.01s, 749.47MB read
Requests/sec:   3411.77
Transfer/sec:     37.45MB
```
