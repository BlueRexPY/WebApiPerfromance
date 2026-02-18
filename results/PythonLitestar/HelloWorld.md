# Python Litestar — Hello World Benchmark

**Tested**: 2026-02-18 04:19:06 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8000/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 23,016.14 |
| Avg Latency | 17.34ms |
| Max Latency | 79.32ms |
| Total Requests | 460,595 |
| Transfer/sec | 3.34MB |
| Port | 8000 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 17.34ms | 22.58ms | 79.32ms | 79.74% |
| Req/Sec | 11.57k | 4.16k | 22.98k | 68.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 148MiB |
| Memory Limit | 1GiB |
| Memory % | 14.45% |
| CPU % | 0.00% |
| PIDs | 37 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8000/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    17.34ms   22.58ms  79.32ms   79.74%
    Req/Sec    11.57k     4.16k   22.98k    68.00%
  460595 requests in 20.01s, 66.77MB read
Requests/sec:  23016.14
Transfer/sec:      3.34MB
```
