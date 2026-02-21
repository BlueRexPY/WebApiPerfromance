# JS Bun NestJS Express Cluster — Hello World Benchmark

**Tested**: 2026-02-21 11:47:55 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8059/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 95,976.10 |
| Avg Latency | 3.06ms |
| Max Latency | 95.22ms |
| Total Requests | 1,919,943 |
| Transfer/sec | 19.68MB |
| Port | 8059 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 3.06ms | 7.70ms | 95.22ms | 94.36% |
| Req/Sec | 48.24k | 13.50k | 62.14k | 88.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 160.8MiB |
| Memory Limit | 1GiB |
| Memory % | 15.70% |
| CPU % | 3.93% |
| PIDs | 31 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8059/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.06ms    7.70ms  95.22ms   94.36%
    Req/Sec    48.24k    13.50k   62.14k    88.00%
  1919943 requests in 20.00s, 393.67MB read
Requests/sec:  95976.10
Transfer/sec:     19.68MB
```
