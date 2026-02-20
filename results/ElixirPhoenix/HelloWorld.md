# Elixir Phoenix — Hello World Benchmark

**Tested**: 2026-02-19 07:34:35 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8007/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 63,796.11 |
| Avg Latency | 2.15ms |
| Max Latency | 44.92ms |
| Total Requests | 1,276,080 |
| Transfer/sec | 15.45MB |
| Port | 8007 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 2.15ms | 1.76ms | 44.92ms | 92.35% |
| Req/Sec | 32.06k | 1.68k | 36.13k | 76.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 178.5MiB |
| Memory Limit | 1GiB |
| Memory % | 17.43% |
| CPU % | 1.64% |
| PIDs | 85 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8007/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.15ms    1.76ms  44.92ms   92.35%
    Req/Sec    32.06k     1.68k   36.13k    76.25%
  1276080 requests in 20.00s, 309.13MB read
Requests/sec:  63796.11
Transfer/sec:     15.45MB
```
