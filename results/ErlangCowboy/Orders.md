# Erlang Cowboy — Orders Benchmark

**Tested**: 2026-02-18 03:29:55 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8010/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,518.31 |
| Avg Latency | 47.66ms |
| Max Latency | 131.67ms |
| Total Requests | 50,384 |
| Transfer/sec | 25.71MB |
| Port | 8010 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 47.66ms | 9.55ms | 131.67ms | 85.14% |
| Req/Sec | 1.27k | 169.22 | 1.58k | 75.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 157.9MiB |
| Memory Limit | 1GiB |
| Memory % | 15.42% |
| CPU % | 0.09% |
| PIDs | 86 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8010/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    47.66ms    9.55ms 131.67ms   85.14%
    Req/Sec     1.27k   169.22     1.58k    75.50%
  50384 requests in 20.01s, 514.42MB read
Requests/sec:   2518.31
Transfer/sec:     25.71MB
```
