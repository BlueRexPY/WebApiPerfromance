# Django API — Hello World Benchmark

**Tested**: 2026-02-18 03:35:58 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8016/`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,545.96\* |
| Avg Latency | 55.53ms |
| Max Latency | 417.33ms |
| Total Requests | 50,949 |
| Transfer/sec | 750.58KB |
| Port | 8016 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 55.53ms | 53.93ms | 417.33ms | 89.17% |
| Req/Sec | 1.29k | 590.96 | 2.80k | 59.39% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 137.7MiB |
| Memory Limit | 1GiB |
| Memory % | 13.45% |
| CPU % | 0.10% |
| PIDs | 13 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8016/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    55.53ms   53.93ms 417.33ms   89.17%
    Req/Sec     1.29k   590.96     2.80k    59.39%
  50949 requests in 20.01s, 14.67MB read
  Socket errors: connect 0, read 1138, write 0, timeout 0
Requests/sec:   2545.96
Transfer/sec:    750.58KB
```
