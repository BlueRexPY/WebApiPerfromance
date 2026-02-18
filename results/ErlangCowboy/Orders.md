# Erlang Cowboy — Orders Benchmark

**Tested**: 2026-02-18 02:36:06 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8010/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 2,623.33 |
| Avg Latency    | 45.70ms  |
| Max Latency    | 141.05ms |
| Total Requests | 52,503   |
| Transfer/sec   | 26.78MB  |
| Port           | 8010     |

## Thread Stats

| Stat    | Avg     | Stdev  | Max      | +/- Stdev |
| ------- | ------- | ------ | -------- | --------- |
| Latency | 45.70ms | 4.29ms | 141.05ms | 77.18%    |
| Req/Sec | 1.32k   | 63.94  | 1.51k    | 81.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 152.8MiB |
| Memory Limit | 1GiB     |
| Memory %     | 14.92%   |
| CPU %        | 0.16%    |
| PIDs         | 86       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8010/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    45.70ms    4.29ms 141.05ms   77.18%
    Req/Sec     1.32k    63.94     1.51k    81.75%
  52503 requests in 20.01s, 536.06MB read
Requests/sec:   2623.33
Transfer/sec:     26.78MB
```
