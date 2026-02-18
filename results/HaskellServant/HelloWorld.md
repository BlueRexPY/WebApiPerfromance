# Haskell Servant — Hello World Benchmark

**Tested**: 2026-02-18 04:39:51 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8006/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 115,297.04 |
| Avg Latency    | 1.11ms     |
| Max Latency    | 106.67ms   |
| Total Requests | 2,306,053  |
| Transfer/sec   | 21.00MB    |
| Port           | 8006       |

## Thread Stats

| Stat    | Avg    | Stdev  | Max      | +/- Stdev |
| ------- | ------ | ------ | -------- | --------- |
| Latency | 1.11ms | 1.71ms | 106.67ms | 98.98%    |
| Req/Sec | 57.98k | 12.88k | 85.80k   | 63.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 213.8MiB |
| Memory Limit | 1GiB     |
| Memory %     | 20.88%   |
| CPU %        | 0.08%    |
| PIDs         | 7        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8006/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.11ms    1.71ms 106.67ms   98.98%
    Req/Sec    57.98k    12.88k   85.80k    63.00%
  2306053 requests in 20.00s, 420.05MB read
Requests/sec: 115297.04
Transfer/sec:     21.00MB
```
