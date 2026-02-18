# Ruby Rails — Hello World Benchmark

**Tested**: 2026-02-18 02:42:41 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8015/`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 2,118.87\* |
| Avg Latency    | 74.64ms    |
| Max Latency    | 1.98s      |
| Total Requests | 42,428     |
| Transfer/sec   | 593.86KB   |
| Port           | 8015       |

## Thread Stats

| Stat    | Avg     | Stdev    | Max   | +/- Stdev |
| ------- | ------- | -------- | ----- | --------- |
| Latency | 74.64ms | 138.80ms | 1.98s | 97.51%    |
| Req/Sec | 1.07k   | 399.10   | 2.51k | 84.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 289.4MiB |
| Memory Limit | 1GiB     |
| Memory %     | 28.26%   |
| CPU %        | 0.05%    |
| PIDs         | 399      |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8015/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    74.64ms  138.80ms   1.98s    97.51%
    Req/Sec     1.07k   399.10     2.51k    84.50%
  42428 requests in 20.02s, 11.61MB read
  Socket errors: connect 0, read 0, write 0, timeout 1
Requests/sec:   2118.87
Transfer/sec:    593.86KB
```
