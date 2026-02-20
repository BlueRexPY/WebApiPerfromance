# PHP Swoole — Hello World Benchmark

**Tested**: 2026-02-20 04:45:44 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8028/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 15,856.33 |
| Avg Latency | 24.44ms |
| Max Latency | 98.82ms |
| Total Requests | 317,270 |
| Transfer/sec | 2.83MB |
| Port | 8028 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 24.44ms | 29.88ms | 98.82ms | 78.66% |
| Req/Sec | 7.97k | 1.71k | 14.01k | 70.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 57.5MiB |
| Memory Limit | 1GiB |
| Memory % | 5.62% |
| CPU % | 200.41% |
| PIDs | 32 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8028/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    24.44ms   29.88ms  98.82ms   78.66%
    Req/Sec     7.97k     1.71k   14.01k    70.00%
  317270 requests in 20.01s, 56.58MB read
Requests/sec:  15856.33
Transfer/sec:      2.83MB
```
