# Swift Vapor — Hello World Benchmark

**Tested**: 2026-02-20 11:13:35 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8012/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 39,226.07 |
| Avg Latency | 3.14ms |
| Max Latency | 89.18ms |
| Total Requests | 784,615 |
| Transfer/sec | 6.51MB |
| Port | 8012 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 3.14ms | 1.98ms | 89.18ms | 98.03% |
| Req/Sec | 19.72k | 1.24k | 20.70k | 97.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 38.1MiB |
| Memory Limit | 1GiB |
| Memory % | 3.72% |
| CPU % | 0.03% |
| PIDs | 6 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8012/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.14ms    1.98ms  89.18ms   98.03%
    Req/Sec    19.72k     1.24k   20.70k    97.25%
  784615 requests in 20.00s, 130.20MB read
Requests/sec:  39226.07
Transfer/sec:      6.51MB
```
