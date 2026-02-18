# Swift Vapor — Hello World Benchmark

**Tested**: 2026-02-18 03:31:35 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8012/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 33,271.14 |
| Avg Latency | 3.64ms |
| Max Latency | 47.88ms |
| Total Requests | 665,452 |
| Transfer/sec | 4.89MB |
| Port | 8012 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 3.64ms | 1.37ms | 47.88ms | 92.03% |
| Req/Sec | 16.72k | 1.50k | 20.03k | 73.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 4.582MiB |
| Memory Limit | 1GiB |
| Memory % | 0.45% |
| CPU % | 0.01% |
| PIDs | 6 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8012/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.64ms    1.37ms  47.88ms   92.03%
    Req/Sec    16.72k     1.50k   20.03k    73.25%
  665452 requests in 20.00s, 97.73MB read
Requests/sec:  33271.14
Transfer/sec:      4.89MB
```
