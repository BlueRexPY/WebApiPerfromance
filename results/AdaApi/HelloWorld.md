# Ada (GNAT.Sockets) — Hello World Benchmark

**Tested**: 2026-02-25 07:41:01 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8079/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 11,495.25 |
| Avg Latency | 13.88ms |
| Max Latency | 79.92ms |
| Total Requests | 230,215 |
| Transfer/sec | 1.28MB |
| Port | 8079 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 13.88ms | 15.40ms | 79.92ms | 80.97% |
| Req/Sec | 5.78k | 2.91k | 13.81k | 79.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 3.809MiB |
| Memory Limit | 1GiB |
| Memory % | 0.37% |
| CPU % | 0.00% |
| PIDs | 1 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8079/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    13.88ms   15.40ms  79.92ms   80.97%
    Req/Sec     5.78k     2.91k   13.81k    79.75%
  230215 requests in 20.03s, 25.69MB read
Requests/sec:  11495.25
Transfer/sec:      1.28MB
```
