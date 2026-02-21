# JS Bun Koa Cluster — Orders Benchmark

**Tested**: 2026-02-21 11:47:10 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8058/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 6,267.72 |
| Avg Latency | 24.85ms |
| Max Latency | 678.06ms |
| Total Requests | 125,408 |
| Transfer/sec | 66.98MB |
| Port | 8058 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 24.85ms | 45.51ms | 678.06ms | 97.74% |
| Req/Sec | 3.15k | 657.92 | 4.03k | 84.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 131MiB |
| Memory Limit | 1GiB |
| Memory % | 12.79% |
| CPU % | 8.12% |
| PIDs | 48 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8058/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    24.85ms   45.51ms 678.06ms   97.74%
    Req/Sec     3.15k   657.92     4.03k    84.50%
  125408 requests in 20.01s, 1.31GB read
Requests/sec:   6267.72
Transfer/sec:     66.98MB
```
