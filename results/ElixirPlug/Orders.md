# Elixir Plug — Orders Benchmark

**Tested**: 2026-02-20 05:58:09 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8034/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 5,976.94 |
| Avg Latency    | 20.40ms  |
| Max Latency    | 150.91ms |
| Total Requests | 119,584  |
| Transfer/sec   | 65.40MB  |
| Port           | 8034     |

## Thread Stats

| Stat    | Avg     | Stdev  | Max      | +/- Stdev |
| ------- | ------- | ------ | -------- | --------- |
| Latency | 20.40ms | 6.57ms | 150.91ms | 97.96%    |
| Req/Sec | 3.00k   | 292.12 | 3.30k    | 93.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 209.5MiB |
| Memory Limit | 1GiB     |
| Memory %     | 20.46%   |
| CPU %        | 1.61%    |
| PIDs         | 85       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8034/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    20.40ms    6.57ms 150.91ms   97.96%
    Req/Sec     3.00k   292.12     3.30k    93.00%
  119584 requests in 20.01s, 1.28GB read
Requests/sec:   5976.94
Transfer/sec:     65.40MB
```
