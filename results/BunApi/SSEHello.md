# JS Bun — SSE Hello Benchmark

**Tested**: 2026-05-31 17:28:28 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/sse/hello`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 63,616.51 |
| Avg Latency | 1.93ms |
| Max Latency | 56.25ms |
| Total Requests | 1,272,418 |
| Transfer/sec | 11.65MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 1.93ms | 1.21ms | 56.25ms | 92.37% |
| Req/Sec | 31.97k | 3.90k | 41.63k | 76.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 33.51MiB |
| Memory Limit | 1GiB |
| Memory % | 3.27% |
| CPU % | 2.16% |
| PIDs | 17 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/sse/hello
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.93ms    1.21ms  56.25ms   92.37%
    Req/Sec    31.97k     3.90k   41.63k    76.50%
  1272418 requests in 20.00s, 232.99MB read
Requests/sec:  63616.51
Transfer/sec:     11.65MB
```
