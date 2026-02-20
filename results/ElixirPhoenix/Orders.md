# Elixir Phoenix — Orders Benchmark

**Tested**: 2026-02-20 11:11:15 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8007/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 5,369.43 |
| Avg Latency | 22.34ms |
| Max Latency | 64.47ms |
| Total Requests | 107,447 |
| Transfer/sec | 58.93MB |
| Port | 8007 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 22.34ms | 1.69ms | 64.47ms | 89.82% |
| Req/Sec | 2.70k | 91.68 | 2.87k | 88.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 213.6MiB |
| Memory Limit | 1GiB |
| Memory % | 20.86% |
| CPU % | 1.57% |
| PIDs | 85 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8007/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    22.34ms    1.69ms  64.47ms   89.82%
    Req/Sec     2.70k    91.68     2.87k    88.00%
  107447 requests in 20.01s, 1.15GB read
Requests/sec:   5369.43
Transfer/sec:     58.93MB
```
