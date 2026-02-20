# Haskell Servant — Hello World Benchmark

**Tested**: 2026-02-20 11:03:25 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8006/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 185,813.73 |
| Avg Latency | 703.71us |
| Max Latency | 84.63ms |
| Total Requests | 3,716,357 |
| Transfer/sec | 33.85MB |
| Port | 8006 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 703.71us | 1.46ms | 84.63ms | 98.96% |
| Req/Sec | 93.39k | 14.30k | 122.75k | 73.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 297.1MiB |
| Memory Limit | 1GiB |
| Memory % | 29.01% |
| CPU % | 0.30% |
| PIDs | 7 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8006/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   703.71us    1.46ms  84.63ms   98.96%
    Req/Sec    93.39k    14.30k  122.75k    73.25%
  3716357 requests in 20.00s, 676.94MB read
Requests/sec: 185813.73
Transfer/sec:     33.85MB
```
