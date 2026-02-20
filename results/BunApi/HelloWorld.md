# Bun API — Hello World Benchmark

**Tested**: 2026-02-20 03:22:38 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 139,902.76 |
| Avg Latency | 0.95ms |
| Max Latency | 74.63ms |
| Total Requests | 2,798,451 |
| Transfer/sec | 18.01MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 0.95ms | 2.07ms | 74.63ms | 99.64% |
| Req/Sec | 70.32k | 6.35k | 79.77k | 87.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 60.37MiB |
| Memory Limit | 1GiB |
| Memory % | 5.90% |
| CPU % | 2.37% |
| PIDs | 16 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     0.95ms    2.07ms  74.63ms   99.64%
    Req/Sec    70.32k     6.35k   79.77k    87.50%
  2798451 requests in 20.00s, 360.29MB read
Requests/sec: 139902.76
Transfer/sec:     18.01MB
```
