# COBOL GnuCOBOL — Hello World Benchmark

**Tested**: 2026-02-25 07:13:32 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8081/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 37,180.36 |
| Avg Latency | 2.35ms |
| Max Latency | 49.67ms |
| Total Requests | 744,322 |
| Transfer/sec | 4.15MB |
| Port | 8081 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 2.35ms | 2.08ms | 49.67ms | 85.23% |
| Req/Sec | 18.69k | 3.50k | 23.26k | 66.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 20.85MiB |
| Memory Limit | 1GiB |
| Memory % | 2.04% |
| CPU % | 0.00% |
| PIDs | 16 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8081/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.35ms    2.08ms  49.67ms   85.23%
    Req/Sec    18.69k     3.50k   23.26k    66.50%
  744322 requests in 20.02s, 83.05MB read
Requests/sec:  37180.36
Transfer/sec:      4.15MB
```
