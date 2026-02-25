# Ada (GNAT.Sockets) — Orders Benchmark

**Tested**: 2026-02-25 07:41:28 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8079/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,234.96 |
| Avg Latency | 40.82ms |
| Max Latency | 104.05ms |
| Total Requests | 64,829 |
| Transfer/sec | 35.04MB |
| Port | 8079 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 40.82ms | 35.28ms | 104.05ms | 46.45% |
| Req/Sec | 1.63k | 275.42 | 2.13k | 70.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 5.969MiB |
| Memory Limit | 1GiB |
| Memory % | 0.58% |
| CPU % | 0.00% |
| PIDs | 1 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8079/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    40.82ms   35.28ms 104.05ms   46.45%
    Req/Sec     1.63k   275.42     2.13k    70.00%
  64829 requests in 20.04s, 702.28MB read
Requests/sec:   3234.96
Transfer/sec:     35.04MB
```
