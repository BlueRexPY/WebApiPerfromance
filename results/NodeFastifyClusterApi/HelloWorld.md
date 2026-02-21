# JS Fastify Cluster — Hello World Benchmark

**Tested**: 2026-02-21 06:17:41 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8042/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 154,504.70 |
| Avg Latency | 1.60ms |
| Max Latency | 197.81ms |
| Total Requests | 3,090,521 |
| Transfer/sec | 29.17MB |
| Port | 8042 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 1.60ms | 6.31ms | 197.81ms | 97.81% |
| Req/Sec | 77.68k | 15.54k | 96.32k | 93.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 67.56MiB |
| Memory Limit | 1GiB |
| Memory % | 6.60% |
| CPU % | 0.00% |
| PIDs | 21 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8042/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.60ms    6.31ms 197.81ms   97.81%
    Req/Sec    77.68k    15.54k   96.32k    93.50%
  3090521 requests in 20.00s, 583.58MB read
Requests/sec: 154504.70
Transfer/sec:     29.17MB
```
