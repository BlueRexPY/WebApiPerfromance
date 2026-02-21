# JS Koa Cluster — Hello World Benchmark

**Tested**: 2026-02-21 06:14:21 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8044/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 128,326.33 |
| Avg Latency | 1.44ms |
| Max Latency | 148.60ms |
| Total Requests | 2,566,940 |
| Transfer/sec | 24.11MB |
| Port | 8044 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 1.44ms | 4.29ms | 148.60ms | 98.15% |
| Req/Sec | 64.49k | 9.95k | 76.58k | 94.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 64.74MiB |
| Memory Limit | 1GiB |
| Memory % | 6.32% |
| CPU % | 0.03% |
| PIDs | 21 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8044/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.44ms    4.29ms 148.60ms   98.15%
    Req/Sec    64.49k     9.95k   76.58k    94.75%
  2566940 requests in 20.00s, 482.26MB read
Requests/sec: 128326.33
Transfer/sec:     24.11MB
```
