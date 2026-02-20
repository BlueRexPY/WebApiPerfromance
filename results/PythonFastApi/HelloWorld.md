# Python FastAPI — Hello World Benchmark

**Tested**: 2026-02-19 07:32:28 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8004/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 27,269.70 |
| Avg Latency | 11.92ms |
| Max Latency | 64.35ms |
| Total Requests | 545,556 |
| Transfer/sec | 3.95MB |
| Port | 8004 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 11.92ms | 16.05ms | 64.35ms | 81.08% |
| Req/Sec | 13.71k | 1.36k | 17.26k | 69.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 225.3MiB |
| Memory Limit | 1GiB |
| Memory % | 22.00% |
| CPU % | 0.90% |
| PIDs | 26 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8004/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    11.92ms   16.05ms  64.35ms   81.08%
    Req/Sec    13.71k     1.36k   17.26k    69.50%
  545556 requests in 20.01s, 79.08MB read
Requests/sec:  27269.70
Transfer/sec:      3.95MB
```
