# Haskell Servant — Hello World Benchmark

**Tested**: 2026-02-18 03:25:04 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8006/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 137,467.54 |
| Avg Latency | 0.96ms |
| Max Latency | 105.72ms |
| Total Requests | 2,749,565 |
| Transfer/sec | 25.04MB |
| Port | 8006 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 0.96ms | 1.83ms | 105.72ms | 98.68% |
| Req/Sec | 69.13k | 16.97k | 96.79k | 67.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 233.2MiB |
| Memory Limit | 1GiB |
| Memory % | 22.78% |
| CPU % | 0.11% |
| PIDs | 7 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8006/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     0.96ms    1.83ms 105.72ms   98.68%
    Req/Sec    69.13k    16.97k   96.79k    67.00%
  2749565 requests in 20.00s, 500.84MB read
Requests/sec: 137467.54
Transfer/sec:     25.04MB
```
