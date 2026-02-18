# Elixir Phoenix — Orders Benchmark

**Tested**: 2026-02-18 03:26:43 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8007/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 4,137.54 |
| Avg Latency | 28.97ms |
| Max Latency | 61.21ms |
| Total Requests | 82,794 |
| Transfer/sec | 45.41MB |
| Port | 8007 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 28.97ms | 3.83ms | 61.21ms | 84.70% |
| Req/Sec | 2.08k | 171.74 | 2.39k | 71.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 193.7MiB |
| Memory Limit | 1GiB |
| Memory % | 18.91% |
| CPU % | 0.21% |
| PIDs | 85 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8007/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    28.97ms    3.83ms  61.21ms   84.70%
    Req/Sec     2.08k   171.74     2.39k    71.50%
  82794 requests in 20.01s, 0.89GB read
Requests/sec:   4137.54
Transfer/sec:     45.41MB
```
