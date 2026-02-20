# C libuv — Orders Benchmark

**Tested**: 2026-02-20 05:53:14 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8031/orders`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,484.98\* |
| Avg Latency | 42.26ms |
| Max Latency | 220.51ms |
| Total Requests | 49,744 |
| Transfer/sec | 26.92MB |
| Port | 8031 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 42.26ms | 27.52ms | 220.51ms | 51.20% |
| Req/Sec | 1.25k | 749.15 | 3.97k | 72.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 9.461MiB |
| Memory Limit | 512MiB |
| Memory % | 1.85% |
| CPU % | 0.00% |
| PIDs | 129 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8031/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    42.26ms   27.52ms 220.51ms   51.20%
    Req/Sec     1.25k   749.15     3.97k    72.25%
  49744 requests in 20.02s, 538.87MB read
  Socket errors: connect 0, read 6168, write 0, timeout 0
Requests/sec:   2484.98
Transfer/sec:     26.92MB
```
