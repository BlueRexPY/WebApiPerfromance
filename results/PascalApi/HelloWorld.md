# Pascal fpWeb — Hello World Benchmark

**Tested**: 2026-02-25 07:12:08 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8082/`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,194.52\* |
| Avg Latency | 236.76ms |
| Max Latency | 1.90s |
| Total Requests | 43,899 |
| Transfer/sec | 246.46KB |
| Port | 8082 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 236.76ms | 362.66ms | 1.90s | 81.17% |
| Req/Sec | 1.10k | 315.03 | 2.58k | 79.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 3.758MiB |
| Memory Limit | 1GiB |
| Memory % | 0.37% |
| CPU % | 4.55% |
| PIDs | 1 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8082/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   236.76ms  362.66ms   1.90s    81.17%
    Req/Sec     1.10k   315.03     2.58k    79.50%
  43899 requests in 20.00s, 4.81MB read
  Socket errors: connect 0, read 43890, write 0, timeout 164
Requests/sec:   2194.52
Transfer/sec:    246.46KB
```
