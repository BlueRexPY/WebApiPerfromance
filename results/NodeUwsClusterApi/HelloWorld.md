# JS Node uWS Cluster — Hello World Benchmark

**Tested**: 2026-02-21 13:42:31 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8068/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 138,801.06 |
| Avg Latency    | 0.85ms     |
| Max Latency    | 45.88ms    |
| Total Requests | 2,776,366  |
| Transfer/sec   | 20.12MB    |
| Port           | 8068       |

## Thread Stats

| Stat    | Avg    | Stdev    | Max     | +/- Stdev |
| ------- | ------ | -------- | ------- | --------- |
| Latency | 0.85ms | 746.51us | 45.88ms | 94.18%    |
| Req/Sec | 69.78k | 22.58k   | 138.77k | 74.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 35.39MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.46%    |
| CPU %        | 0.02%    |
| PIDs         | 21       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8068/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     0.85ms  746.51us  45.88ms   94.18%
    Req/Sec    69.78k    22.58k  138.77k    74.50%
  2776366 requests in 20.00s, 402.46MB read
Requests/sec: 138801.06
Transfer/sec:     20.12MB
```
