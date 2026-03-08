# JS Node AdonisJS — Hello World Benchmark

**Tested**: 2026-03-08 22:32:42 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8088/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 82,888.42 |
| Avg Latency | 1.90ms |
| Max Latency | 242.47ms |
| Total Requests | 1,657,854 |
| Transfer/sec | 15.57MB |
| Port | 8088 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 1.90ms | 7.32ms | 242.47ms | 99.44% |
| Req/Sec | 41.66k | 4.55k | 48.53k | 89.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 47.29MiB |
| Memory Limit | 1GiB |
| Memory % | 4.62% |
| CPU % | 0.00% |
| PIDs | 12 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8088/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.90ms    7.32ms 242.47ms   99.44%
    Req/Sec    41.66k     4.55k   48.53k    89.25%
  1657854 requests in 20.00s, 311.47MB read
Requests/sec:  82888.42
Transfer/sec:     15.57MB
```
