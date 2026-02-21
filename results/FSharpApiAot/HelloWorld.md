# F# .NET AOT — Hello World Benchmark

**Tested**: 2026-02-21 07:17:06 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8020/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 69,588.24 |
| Avg Latency | 4.70ms |
| Max Latency | 69.90ms |
| Total Requests | 1,392,675 |
| Transfer/sec | 12.34MB |
| Port | 8020 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 4.70ms | 10.36ms | 69.90ms | 92.20% |
| Req/Sec | 34.98k | 15.83k | 101.88k | 73.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 15.38MiB |
| Memory Limit | 1GiB |
| Memory % | 1.50% |
| CPU % | 0.03% |
| PIDs | 18 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8020/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.70ms   10.36ms  69.90ms   92.20%
    Req/Sec    34.98k    15.83k  101.88k    73.00%
  1392675 requests in 20.01s, 247.04MB read
Requests/sec:  69588.24
Transfer/sec:     12.34MB
```
