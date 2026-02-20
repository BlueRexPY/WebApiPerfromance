# JS Express — Hello World Benchmark

**Tested**: 2026-02-20 11:15:56 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8014/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 30,646.63 |
| Avg Latency | 4.87ms |
| Max Latency | 406.17ms |
| Total Requests | 613,046 |
| Transfer/sec | 5.76MB |
| Port | 8014 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 4.87ms | 13.88ms | 406.17ms | 99.29% |
| Req/Sec | 15.40k | 1.35k | 16.51k | 95.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 39.7MiB |
| Memory Limit | 1GiB |
| Memory % | 3.88% |
| CPU % | 0.17% |
| PIDs | 7 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8014/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.87ms   13.88ms 406.17ms   99.29%
    Req/Sec    15.40k     1.35k   16.51k    95.25%
  613046 requests in 20.00s, 115.18MB read
Requests/sec:  30646.63
Transfer/sec:      5.76MB
```
