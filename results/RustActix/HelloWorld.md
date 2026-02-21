# Rust Actix — Hello World Benchmark

**Tested**: 2026-02-21 06:53:16 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8005/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 204,901.52 |
| Avg Latency | 563.69us |
| Max Latency | 51.45ms |
| Total Requests | 4,098,380 |
| Transfer/sec | 26.38MB |
| Port | 8005 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 563.69us | 0.94ms | 51.45ms | 99.74% |
| Req/Sec | 102.98k | 19.98k | 147.14k | 71.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 5.477MiB |
| Memory Limit | 1GiB |
| Memory % | 0.53% |
| CPU % | 0.05% |
| PIDs | 4 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8005/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   563.69us    0.94ms  51.45ms   99.74%
    Req/Sec   102.98k    19.98k  147.14k    71.25%
  4098380 requests in 20.00s, 527.65MB read
Requests/sec: 204901.52
Transfer/sec:     26.38MB
```
