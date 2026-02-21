# JS Bun Express Cluster — Hello World Benchmark

**Tested**: 2026-02-21 11:43:16 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8055/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 111,382.24 |
| Avg Latency    | 2.99ms     |
| Max Latency    | 84.28ms    |
| Total Requests | 2,227,946  |
| Transfer/sec   | 15.93MB    |
| Port           | 8055       |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 2.99ms | 8.07ms | 84.28ms | 94.61%    |
| Req/Sec | 56.01k | 18.95k | 90.15k  | 78.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 124.7MiB |
| Memory Limit | 1GiB     |
| Memory %     | 12.17%   |
| CPU %        | 4.25%    |
| PIDs         | 48       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8055/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.99ms    8.07ms  84.28ms   94.61%
    Req/Sec    56.01k    18.95k   90.15k    78.25%
  2227946 requests in 20.00s, 318.71MB read
Requests/sec: 111382.24
Transfer/sec:     15.93MB
```
