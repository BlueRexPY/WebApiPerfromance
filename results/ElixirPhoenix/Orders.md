# Elixir Phoenix — Orders Benchmark

**Tested**: 2026-02-18 02:33:07 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8007/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 4,850.30 |
| Avg Latency    | 24.72ms  |
| Max Latency    | 65.22ms  |
| Total Requests | 97,068   |
| Transfer/sec   | 53.24MB  |
| Port           | 8007     |

## Thread Stats

| Stat    | Avg     | Stdev  | Max     | +/- Stdev |
| ------- | ------- | ------ | ------- | --------- |
| Latency | 24.72ms | 1.91ms | 65.22ms | 85.04%    |
| Req/Sec | 2.44k   | 107.50 | 2.67k   | 82.75%    |

## Resource Usage

| Metric       | Value  |
| ------------ | ------ |
| Memory Usage | 196MiB |
| Memory Limit | 1GiB   |
| Memory %     | 19.14% |
| CPU %        | 0.43%  |
| PIDs         | 85     |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8007/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    24.72ms    1.91ms  65.22ms   85.04%
    Req/Sec     2.44k   107.50     2.67k    82.75%
  97068 requests in 20.01s, 1.04GB read
Requests/sec:   4850.30
Transfer/sec:     53.24MB
```
