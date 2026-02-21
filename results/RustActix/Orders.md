# Rust Actix — Orders Benchmark

**Tested**: 2026-02-21 06:53:42 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8005/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 10,015.38 |
| Avg Latency    | 14.88ms   |
| Max Latency    | 171.72ms  |
| Total Requests | 200,328   |
| Transfer/sec   | 108.79MB  |
| Port           | 8005      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 14.88ms | 13.88ms | 171.72ms | 68.46%    |
| Req/Sec | 5.03k   | 1.16k   | 9.04k    | 68.00%    |

## Resource Usage

| Metric       | Value   |
| ------------ | ------- |
| Memory Usage | 12.2MiB |
| Memory Limit | 1GiB    |
| Memory %     | 1.19%   |
| CPU %        | 0.04%   |
| PIDs         | 4       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8005/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    14.88ms   13.88ms 171.72ms   68.46%
    Req/Sec     5.03k     1.16k    9.04k    68.00%
  200328 requests in 20.00s, 2.13GB read
Requests/sec:  10015.38
Transfer/sec:    108.79MB
```
