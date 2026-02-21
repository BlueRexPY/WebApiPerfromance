# PHP Swoole — Hello World Benchmark

**Tested**: 2026-02-21 07:07:20 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8028/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 36,746.54 |
| Avg Latency | 18.87ms |
| Max Latency | 96.30ms |
| Total Requests | 734,981 |
| Transfer/sec | 6.55MB |
| Port | 8028 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 18.87ms | 25.31ms | 96.30ms | 79.19% |
| Req/Sec | 18.46k | 4.07k | 44.20k | 74.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 47.66MiB |
| Memory Limit | 1GiB |
| Memory % | 4.65% |
| CPU % | 0.15% |
| PIDs | 33 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8028/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    18.87ms   25.31ms  96.30ms   79.19%
    Req/Sec    18.46k     4.07k   44.20k    74.50%
  734981 requests in 20.00s, 131.07MB read
Requests/sec:  36746.54
Transfer/sec:      6.55MB
```
