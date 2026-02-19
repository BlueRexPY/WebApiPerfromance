# Bun API — Hello World Benchmark

**Tested**: 2026-02-19 06:37:19 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 120,061.48 |
| Avg Latency | 1.03ms |
| Max Latency | 52.13ms |
| Total Requests | 2,401,538 |
| Transfer/sec | 15.46MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 1.03ms | 0.95ms | 52.13ms | 97.69% |
| Req/Sec | 60.36k | 8.84k | 75.11k | 72.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 62MiB |
| Memory Limit | 1GiB |
| Memory % | 6.06% |
| CPU % | 1.96% |
| PIDs | 16 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.03ms    0.95ms  52.13ms   97.69%
    Req/Sec    60.36k     8.84k   75.11k    72.25%
  2401538 requests in 20.00s, 309.19MB read
Requests/sec: 120061.48
Transfer/sec:     15.46MB
```
