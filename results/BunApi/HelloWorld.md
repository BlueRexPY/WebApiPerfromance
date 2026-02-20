# Bun API — Hello World Benchmark

**Tested**: 2026-02-19 07:30:15 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 130,148.38 |
| Avg Latency | 0.95ms |
| Max Latency | 49.45ms |
| Total Requests | 2,603,112 |
| Transfer/sec | 16.76MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 0.95ms | 1.00ms | 49.45ms | 99.06% |
| Req/Sec | 65.42k | 4.26k | 72.68k | 75.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 37.12MiB |
| Memory Limit | 1GiB |
| Memory % | 3.63% |
| CPU % | 0.48% |
| PIDs | 16 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     0.95ms    1.00ms  49.45ms   99.06%
    Req/Sec    65.42k     4.26k   72.68k    75.00%
  2603112 requests in 20.00s, 335.14MB read
Requests/sec: 130148.38
Transfer/sec:     16.76MB
```
