# Erlang Cowboy — Hello World Benchmark

**Tested**: 2026-02-20 11:12:31 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8010/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 108,596.31 |
| Avg Latency | 1.18ms |
| Max Latency | 69.26ms |
| Total Requests | 2,172,176 |
| Transfer/sec | 15.64MB |
| Port | 8010 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 1.18ms | 1.30ms | 69.26ms | 97.15% |
| Req/Sec | 54.57k | 2.17k | 59.35k | 81.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 110.1MiB |
| Memory Limit | 1GiB |
| Memory % | 10.75% |
| CPU % | 0.44% |
| PIDs | 86 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8010/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.18ms    1.30ms  69.26ms   97.15%
    Req/Sec    54.57k     2.17k   59.35k    81.25%
  2172176 requests in 20.00s, 312.84MB read
Requests/sec: 108596.31
Transfer/sec:     15.64MB
```
