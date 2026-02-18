# Rust Actix — Hello World Benchmark

**Tested**: 2026-02-18 04:24:40 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8005/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 110,260.19 |
| Avg Latency | 9.76ms |
| Max Latency | 63.58ms |
| Total Requests | 2,205,562 |
| Transfer/sec | 14.20MB |
| Port | 8005 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 9.76ms | 15.76ms | 63.58ms | 81.45% |
| Req/Sec | 55.42k | 14.22k | 84.51k | 65.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 4.508MiB |
| Memory Limit | 1GiB |
| Memory % | 0.44% |
| CPU % | 0.17% |
| PIDs | 16 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8005/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     9.76ms   15.76ms  63.58ms   81.45%
    Req/Sec    55.42k    14.22k   84.51k    65.50%
  2205562 requests in 20.00s, 283.96MB read
Requests/sec: 110260.19
Transfer/sec:     14.20MB
```
