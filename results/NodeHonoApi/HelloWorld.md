# JS Hono — Hello World Benchmark

**Tested**: 2026-02-21 05:30:43 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8039/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 42,931.40 |
| Avg Latency | 3.86ms |
| Max Latency | 420.64ms |
| Total Requests | 858,748 |
| Transfer/sec | 7.45MB |
| Port | 8039 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 3.86ms | 14.87ms | 420.64ms | 99.21% |
| Req/Sec | 21.58k | 2.23k | 23.67k | 97.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 28.5MiB |
| Memory Limit | 1GiB |
| Memory % | 2.78% |
| CPU % | 0.00% |
| PIDs | 11 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8039/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.86ms   14.87ms 420.64ms   99.21%
    Req/Sec    21.58k     2.23k   23.67k    97.00%
  858748 requests in 20.00s, 149.05MB read
Requests/sec:  42931.40
Transfer/sec:      7.45MB
```
