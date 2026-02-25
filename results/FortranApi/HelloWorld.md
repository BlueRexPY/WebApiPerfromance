# Fortran GFortran — Hello World Benchmark

**Tested**: 2026-02-25 07:09:08 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8083/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 5,468.92 |
| Avg Latency | 25.08ms |
| Max Latency | 76.96ms |
| Total Requests | 109,588 |
| Transfer/sec | 624.87KB |
| Port | 8083 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 25.08ms | 22.62ms | 76.96ms | 81.79% |
| Req/Sec | 2.75k | 301.38 | 6.03k | 95.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 5.504MiB |
| Memory Limit | 1GiB |
| Memory % | 0.54% |
| CPU % | 0.00% |
| PIDs | 1 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8083/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    25.08ms   22.62ms  76.96ms   81.79%
    Req/Sec     2.75k   301.38     6.03k    95.75%
  109588 requests in 20.04s, 12.23MB read
Requests/sec:   5468.92
Transfer/sec:    624.87KB
```
