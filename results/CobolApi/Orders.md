# COBOL GnuCOBOL — Orders Benchmark

**Tested**: 2026-02-25 07:13:58 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8081/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,941.64 |
| Avg Latency | 43.00ms |
| Max Latency | 100.59ms |
| Total Requests | 58,872 |
| Transfer/sec | 31.87MB |
| Port | 8081 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 43.00ms | 35.20ms | 100.59ms | 44.03% |
| Req/Sec | 1.48k | 364.10 | 3.10k | 69.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 21.09MiB |
| Memory Limit | 1GiB |
| Memory % | 2.06% |
| CPU % | 0.00% |
| PIDs | 16 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8081/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    43.00ms   35.20ms 100.59ms   44.03%
    Req/Sec     1.48k   364.10     3.10k    69.00%
  58872 requests in 20.01s, 637.75MB read
Requests/sec:   2941.64
Transfer/sec:     31.87MB
```
