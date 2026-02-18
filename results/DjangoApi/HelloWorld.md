# Django API — Hello World Benchmark

**Tested**: 2026-02-18 04:50:54 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8016/`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 1,417.66\* |
| Avg Latency    | 164.76ms   |
| Max Latency    | 1.61s      |
| Total Requests | 28,376     |
| Transfer/sec   | 418.07KB   |
| Port           | 8016       |

## Thread Stats

| Stat    | Avg      | Stdev    | Max   | +/- Stdev |
| ------- | -------- | -------- | ----- | --------- |
| Latency | 164.76ms | 267.86ms | 1.61s | 89.22%    |
| Req/Sec | 749.57   | 444.28   | 2.10k | 66.32%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 421.4MiB |
| Memory Limit | 1GiB     |
| Memory %     | 41.15%   |
| CPU %        | 150.90%  |
| PIDs         | 68       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8016/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   164.76ms  267.86ms   1.61s    89.22%
    Req/Sec   749.57    444.28     2.10k    66.32%
  28376 requests in 20.02s, 8.17MB read
  Socket errors: connect 0, read 239, write 0, timeout 0
Requests/sec:   1417.66
Transfer/sec:    418.07KB
```
