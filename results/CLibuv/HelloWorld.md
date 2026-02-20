# C libuv — Hello World Benchmark

**Tested**: 2026-02-20 05:52:48 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8031/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 36,984.32 |
| Avg Latency | 2.60ms |
| Max Latency | 40.81ms |
| Total Requests | 740,036 |
| Transfer/sec | 4.13MB |
| Port | 8031 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 2.60ms | 2.07ms | 40.81ms | 81.41% |
| Req/Sec | 18.59k | 2.71k | 23.29k | 76.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 4.035MiB |
| Memory Limit | 512MiB |
| Memory % | 0.79% |
| CPU % | 0.00% |
| PIDs | 1 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8031/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.60ms    2.07ms  40.81ms   81.41%
    Req/Sec    18.59k     2.71k   23.29k    76.00%
  740036 requests in 20.01s, 82.57MB read
Requests/sec:  36984.32
Transfer/sec:      4.13MB
```
