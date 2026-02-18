# Express API — Hello World Benchmark

**Tested**: 2026-02-18 03:33:40 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8014/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 23,261.88 |
| Avg Latency | 6.50ms |
| Max Latency | 533.98ms |
| Total Requests | 465,312 |
| Transfer/sec | 4.37MB |
| Port | 8014 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 6.50ms | 18.52ms | 533.98ms | 99.26% |
| Req/Sec | 11.69k | 1.77k | 13.91k | 82.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 38.89MiB |
| Memory Limit | 1GiB |
| Memory % | 3.80% |
| CPU % | 0.01% |
| PIDs | 7 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8014/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     6.50ms   18.52ms 533.98ms   99.26%
    Req/Sec    11.69k     1.77k   13.91k    82.50%
  465312 requests in 20.00s, 87.42MB read
Requests/sec:  23261.88
Transfer/sec:      4.37MB
```
