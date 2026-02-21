# Erlang Cowboy — Orders Benchmark

**Tested**: 2026-02-20 11:12:57 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8010/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,389.72 |
| Avg Latency    | 35.37ms  |
| Max Latency    | 104.03ms |
| Total Requests | 67,829   |
| Transfer/sec   | 34.61MB  |
| Port           | 8010     |

## Thread Stats

| Stat    | Avg     | Stdev  | Max      | +/- Stdev |
| ------- | ------- | ------ | -------- | --------- |
| Latency | 35.37ms | 3.74ms | 104.03ms | 71.92%    |
| Req/Sec | 1.70k   | 78.11  | 1.92k    | 74.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 170.4MiB |
| Memory Limit | 1GiB     |
| Memory %     | 16.65%   |
| CPU %        | 0.16%    |
| PIDs         | 86       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8010/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    35.37ms    3.74ms 104.03ms   71.92%
    Req/Sec     1.70k    78.11     1.92k    74.75%
  67829 requests in 20.01s, 692.54MB read
Requests/sec:   3389.72
Transfer/sec:     34.61MB
```
