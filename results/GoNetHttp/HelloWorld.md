# Go net/http — Hello World Benchmark

**Tested**: 2026-02-20 05:53:59 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8032/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 19,104.87 |
| Avg Latency | 21.36ms |
| Max Latency | 133.70ms |
| Total Requests | 382,352 |
| Transfer/sec | 2.48MB |
| Port | 8032 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 21.36ms | 27.06ms | 133.70ms | 79.06% |
| Req/Sec | 9.60k | 3.78k | 25.17k | 79.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 17.21MiB |
| Memory Limit | 512MiB |
| Memory % | 3.36% |
| CPU % | 0.00% |
| PIDs | 45 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8032/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    21.36ms   27.06ms 133.70ms   79.06%
    Req/Sec     9.60k     3.78k   25.17k    79.25%
  382352 requests in 20.01s, 49.59MB read
Requests/sec:  19104.87
Transfer/sec:      2.48MB
```
