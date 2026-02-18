# Django API — Hello World Benchmark

**Tested**: 2026-02-18 02:43:46 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8016/`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 1,937.01\* |
| Avg Latency    | 64.76ms    |
| Max Latency    | 418.89ms   |
| Total Requests | 38,772     |
| Transfer/sec   | 570.99KB   |
| Port           | 8016       |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 64.76ms | 44.70ms | 418.89ms | 82.02%    |
| Req/Sec | 0.99k   | 413.13  | 2.08k    | 70.51%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 137.8MiB |
| Memory Limit | 1GiB     |
| Memory %     | 13.45%   |
| CPU %        | 0.11%    |
| PIDs         | 13       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8016/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    64.76ms   44.70ms 418.89ms   82.02%
    Req/Sec     0.99k   413.13     2.08k    70.51%
  38772 requests in 20.02s, 11.16MB read
  Socket errors: connect 0, read 883, write 0, timeout 0
Requests/sec:   1937.01
Transfer/sec:    570.99KB
```
