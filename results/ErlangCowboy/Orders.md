# Erlang Cowboy — Orders Benchmark

**Tested**: 2026-02-18 04:44:47 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8010/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 2,240.62 |
| Avg Latency    | 53.50ms  |
| Max Latency    | 168.07ms |
| Total Requests | 44,832   |
| Transfer/sec   | 22.88MB  |
| Port           | 8010     |

## Thread Stats

| Stat    | Avg     | Stdev  | Max      | +/- Stdev |
| ------- | ------- | ------ | -------- | --------- |
| Latency | 53.50ms | 8.86ms | 168.07ms | 83.77%    |
| Req/Sec | 1.13k   | 111.77 | 1.37k    | 73.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 162.1MiB |
| Memory Limit | 1GiB     |
| Memory %     | 15.83%   |
| CPU %        | 0.11%    |
| PIDs         | 86       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8010/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    53.50ms    8.86ms 168.07ms   83.77%
    Req/Sec     1.13k   111.77     1.37k    73.50%
  44832 requests in 20.01s, 457.74MB read
Requests/sec:   2240.62
Transfer/sec:     22.88MB
```
