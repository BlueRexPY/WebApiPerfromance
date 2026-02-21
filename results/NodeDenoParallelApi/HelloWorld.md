# JS Deno Parallel — Hello World Benchmark

**Tested**: 2026-02-21 06:34:27 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8048/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 166,758.54 |
| Avg Latency | 0.90ms |
| Max Latency | 74.78ms |
| Total Requests | 3,335,523 |
| Transfer/sec | 25.13MB |
| Port | 8048 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 0.90ms | 2.76ms | 74.78ms | 99.23% |
| Req/Sec | 83.87k | 15.93k | 119.80k | 73.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 82.07MiB |
| Memory Limit | 1GiB |
| Memory % | 8.02% |
| CPU % | 0.01% |
| PIDs | 20 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8048/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     0.90ms    2.76ms  74.78ms   99.23%
    Req/Sec    83.87k    15.93k  119.80k    73.50%
  3335523 requests in 20.00s, 502.60MB read
Requests/sec: 166758.54
Transfer/sec:     25.13MB
```
