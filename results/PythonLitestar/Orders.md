# Python Litestar — Orders Benchmark

**Tested**: 2026-02-18 04:19:32 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8000/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,676.32 |
| Avg Latency | 39.10ms |
| Max Latency | 197.65ms |
| Total Requests | 73,543 |
| Transfer/sec | 39.99MB |
| Port | 8000 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 39.10ms | 37.27ms | 197.65ms | 71.35% |
| Req/Sec | 1.85k | 491.11 | 3.18k | 65.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 159.1MiB |
| Memory Limit | 1GiB |
| Memory % | 15.54% |
| CPU % | 0.00% |
| PIDs | 37 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8000/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    39.10ms   37.27ms 197.65ms   71.35%
    Req/Sec     1.85k   491.11     3.18k    65.00%
  73543 requests in 20.00s, 800.04MB read
Requests/sec:   3676.32
Transfer/sec:     39.99MB
```
