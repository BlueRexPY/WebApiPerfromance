# Python Litestar — Orders Benchmark

**Tested**: 2026-02-18 03:18:53 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8000/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,964.28 |
| Avg Latency | 42.49ms |
| Max Latency | 178.29ms |
| Total Requests | 59,307 |
| Transfer/sec | 32.25MB |
| Port | 8000 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 42.49ms | 33.47ms | 178.29ms | 60.14% |
| Req/Sec | 1.49k | 507.06 | 2.89k | 62.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 153.6MiB |
| Memory Limit | 1GiB |
| Memory % | 15.00% |
| CPU % | 0.00% |
| PIDs | 37 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8000/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    42.49ms   33.47ms 178.29ms   60.14%
    Req/Sec     1.49k   507.06     2.89k    62.25%
  59307 requests in 20.01s, 645.17MB read
Requests/sec:   2964.28
Transfer/sec:     32.25MB
```
