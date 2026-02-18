# Deno API — Hello World Benchmark

**Tested**: 2026-02-18 03:30:33 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8011/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 106,969.31 |
| Avg Latency | 1.16ms |
| Max Latency | 49.06ms |
| Total Requests | 2,139,575 |
| Transfer/sec | 16.12MB |
| Port | 8011 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 1.16ms | 0.96ms | 49.06ms | 95.66% |
| Req/Sec | 53.76k | 6.45k | 65.58k | 74.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 45.88MiB |
| Memory Limit | 1GiB |
| Memory % | 4.48% |
| CPU % | 0.01% |
| PIDs | 18 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8011/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.16ms    0.96ms  49.06ms   95.66%
    Req/Sec    53.76k     6.45k   65.58k    74.25%
  2139575 requests in 20.00s, 322.39MB read
Requests/sec: 106969.31
Transfer/sec:     16.12MB
```
