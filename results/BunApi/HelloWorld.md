# Bun API — Hello World Benchmark

**Tested**: 2026-02-19 06:51:30 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 126,392.37 |
| Avg Latency | 1.04ms |
| Max Latency | 72.27ms |
| Total Requests | 2,528,213 |
| Transfer/sec | 16.27MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 1.04ms | 2.03ms | 72.27ms | 99.57% |
| Req/Sec | 63.53k | 6.40k | 74.41k | 82.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 35.07MiB |
| Memory Limit | 1GiB |
| Memory % | 3.42% |
| CPU % | 0.53% |
| PIDs | 18 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.04ms    2.03ms  72.27ms   99.57%
    Req/Sec    63.53k     6.40k   74.41k    82.00%
  2528213 requests in 20.00s, 325.50MB read
Requests/sec: 126392.37
Transfer/sec:     16.27MB
```
