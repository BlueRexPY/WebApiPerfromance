# Bun API — Hello World Benchmark

**Tested**: 2026-02-18 04:21:12 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 116,915.13 |
| Avg Latency | 1.06ms |
| Max Latency | 38.90ms |
| Total Requests | 2,338,448 |
| Transfer/sec | 15.05MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 1.06ms | 840.36us | 38.90ms | 94.96% |
| Req/Sec | 58.77k | 6.17k | 69.91k | 72.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 15.57MiB |
| Memory Limit | 1GiB |
| Memory % | 1.52% |
| CPU % | 1.73% |
| PIDs | 17 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.06ms  840.36us  38.90ms   94.96%
    Req/Sec    58.77k     6.17k   69.91k    72.50%
  2338448 requests in 20.00s, 301.07MB read
Requests/sec: 116915.13
Transfer/sec:     15.05MB
```
