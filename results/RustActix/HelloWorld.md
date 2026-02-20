# Rust Actix — Hello World Benchmark

**Tested**: 2026-02-20 11:31:32 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8005/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 51,658.53 |
| Avg Latency | 11.60ms |
| Max Latency | 65.38ms |
| Total Requests | 1,033,337 |
| Transfer/sec | 6.65MB |
| Port | 8005 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 11.60ms | 17.43ms | 65.38ms | 80.84% |
| Req/Sec | 25.97k | 11.69k | 78.10k | 89.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 4.469MiB |
| Memory Limit | 1GiB |
| Memory % | 0.44% |
| CPU % | 0.31% |
| PIDs | 16 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8005/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    11.60ms   17.43ms  65.38ms   80.84%
    Req/Sec    25.97k    11.69k   78.10k    89.50%
  1033337 requests in 20.00s, 133.04MB read
Requests/sec:  51658.53
Transfer/sec:      6.65MB
```
