# Go Fiber — Orders Benchmark

**Tested**: 2026-02-20 03:25:01 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8008/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 4,414.08 |
| Avg Latency | 40.54ms |
| Max Latency | 953.34ms |
| Total Requests | 88,421 |
| Transfer/sec | 48.38MB |
| Port | 8008 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 40.54ms | 59.60ms | 953.34ms | 97.08% |
| Req/Sec | 2.22k | 783.54 | 5.89k | 73.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 69.99MiB |
| Memory Limit | 1GiB |
| Memory % | 6.84% |
| CPU % | 0.02% |
| PIDs | 47 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8008/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    40.54ms   59.60ms 953.34ms   97.08%
    Req/Sec     2.22k   783.54     5.89k    73.25%
  88421 requests in 20.03s, 0.95GB read
Requests/sec:   4414.08
Transfer/sec:     48.38MB
```
