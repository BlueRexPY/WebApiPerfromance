# .NET API — MongoDB Orders Benchmark

**Tested**: 2026-02-19 07:29:36 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8001/mongodb/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 3,938.15\* |
| Avg Latency    | 32.02ms    |
| Max Latency    | 223.03ms   |
| Total Requests | 78,837     |
| Transfer/sec   | 426.89KB   |
| Port           | 8001       |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 32.02ms | 20.34ms | 223.03ms | 75.09%    |
| Req/Sec | 1.98k   | 448.84  | 3.02k    | 66.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 88.63MiB |
| Memory Limit | 1GiB     |
| Memory %     | 8.66%    |
| CPU %        | 0.02%    |
| PIDs         | 27       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8001/mongodb/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    32.02ms   20.34ms 223.03ms   75.09%
    Req/Sec     1.98k   448.84     3.02k    66.25%
  78837 requests in 20.02s, 8.35MB read
  Non-2xx or 3xx responses: 78837
Requests/sec:   3938.15
Transfer/sec:    426.89KB
```
