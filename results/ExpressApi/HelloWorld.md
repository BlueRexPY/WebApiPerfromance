# JS Express — Hello World Benchmark

**Tested**: 2026-02-21 09:01:49 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8014/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 28,702.16 |
| Avg Latency | 4.95ms |
| Max Latency | 375.47ms |
| Total Requests | 574,069 |
| Transfer/sec | 5.39MB |
| Port | 8014 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 4.95ms | 11.98ms | 375.47ms | 99.39% |
| Req/Sec | 14.42k | 1.32k | 16.43k | 84.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 101.7MiB |
| Memory Limit | 1GiB |
| Memory % | 9.93% |
| CPU % | 0.11% |
| PIDs | 7 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8014/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.95ms   11.98ms 375.47ms   99.39%
    Req/Sec    14.42k     1.32k   16.43k    84.00%
  574069 requests in 20.00s, 107.85MB read
Requests/sec:  28702.16
Transfer/sec:      5.39MB
```
