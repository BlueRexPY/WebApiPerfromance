# Bun API — Hello World Benchmark

**Tested**: 2026-02-19 07:01:16 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 128,571.02 |
| Avg Latency | 0.98ms |
| Max Latency | 57.59ms |
| Total Requests | 2,571,616 |
| Transfer/sec | 16.55MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 0.98ms | 1.25ms | 57.59ms | 99.40% |
| Req/Sec | 64.62k | 5.07k | 72.91k | 74.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 35.58MiB |
| Memory Limit | 1GiB |
| Memory % | 3.47% |
| CPU % | 0.45% |
| PIDs | 18 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     0.98ms    1.25ms  57.59ms   99.40%
    Req/Sec    64.62k     5.07k   72.91k    74.75%
  2571616 requests in 20.00s, 331.09MB read
Requests/sec: 128571.02
Transfer/sec:     16.55MB
```
