# Elixir Phoenix — Hello World Benchmark

**Tested**: 2026-02-18 03:26:18 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8007/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 52,176.80 |
| Avg Latency | 2.59ms |
| Max Latency | 30.83ms |
| Total Requests | 1,043,659 |
| Transfer/sec | 12.64MB |
| Port | 8007 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 2.59ms | 1.94ms | 30.83ms | 89.49% |
| Req/Sec | 26.23k | 3.34k | 33.21k | 66.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 166.3MiB |
| Memory Limit | 1GiB |
| Memory % | 16.24% |
| CPU % | 0.55% |
| PIDs | 85 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8007/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.59ms    1.94ms  30.83ms   89.49%
    Req/Sec    26.23k     3.34k   33.21k    66.00%
  1043659 requests in 20.00s, 252.83MB read
Requests/sec:  52176.80
Transfer/sec:     12.64MB
```
