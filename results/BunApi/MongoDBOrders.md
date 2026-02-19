# Bun API — MongoDB Orders Benchmark

**Tested**: 2026-02-19 06:52:22 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/mongodb/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,088.52 |
| Avg Latency | 38.82ms |
| Max Latency | 116.03ms |
| Total Requests | 61,788 |
| Transfer/sec | 32.84MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 38.82ms | 9.20ms | 116.03ms | 67.22% |
| Req/Sec | 1.55k | 135.14 | 1.75k | 84.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 93.93MiB |
| Memory Limit | 1GiB |
| Memory % | 9.17% |
| CPU % | 2.72% |
| PIDs | 18 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/mongodb/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    38.82ms    9.20ms 116.03ms   67.22%
    Req/Sec     1.55k   135.14     1.75k    84.50%
  61788 requests in 20.01s, 657.08MB read
Requests/sec:   3088.52
Transfer/sec:     32.84MB
```
