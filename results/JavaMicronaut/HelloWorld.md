# Java Micronaut — Hello World Benchmark

**Tested**: 2026-02-20 05:31:43 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8026/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 30,816.49 |
| Avg Latency | 13.84ms |
| Max Latency | 127.61ms |
| Total Requests | 616,499 |
| Transfer/sec | 3.97MB |
| Port | 8026 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 13.84ms | 19.13ms | 127.61ms | 80.52% |
| Req/Sec | 15.49k | 10.07k | 65.24k | 90.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 111.4MiB |
| Memory Limit | 1GiB |
| Memory % | 10.87% |
| CPU % | 0.20% |
| PIDs | 27 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8026/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    13.84ms   19.13ms 127.61ms   80.52%
    Req/Sec    15.49k    10.07k   65.24k    90.75%
  616499 requests in 20.01s, 79.37MB read
Requests/sec:  30816.49
Transfer/sec:      3.97MB
```
