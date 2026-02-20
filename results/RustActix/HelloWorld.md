# Rust Actix — Hello World Benchmark

**Tested**: 2026-02-20 03:19:13 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8005/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 53,865.99 |
| Avg Latency | 11.64ms |
| Max Latency | 66.69ms |
| Total Requests | 1,077,485 |
| Transfer/sec | 6.94MB |
| Port | 8005 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 11.64ms | 17.51ms | 66.69ms | 80.79% |
| Req/Sec | 27.06k | 15.90k | 87.33k | 88.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 7.629MiB |
| Memory Limit | 1GiB |
| Memory % | 0.75% |
| CPU % | 0.40% |
| PIDs | 16 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8005/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    11.64ms   17.51ms  66.69ms   80.79%
    Req/Sec    27.06k    15.90k   87.33k    88.75%
  1077485 requests in 20.00s, 138.72MB read
Requests/sec:  53865.99
Transfer/sec:      6.94MB
```
