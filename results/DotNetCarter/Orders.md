# C# Carter — Orders Benchmark

**Tested**: 2026-02-20 05:59:20 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8035/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 8,324.23 |
| Avg Latency | 21.96ms |
| Max Latency | 100.35ms |
| Total Requests | 166,644 |
| Transfer/sec | 88.44MB |
| Port | 8035 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 21.96ms | 23.27ms | 100.35ms | 79.42% |
| Req/Sec | 4.18k | 1.71k | 10.82k | 80.25% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 57.09MiB |
| Memory Limit | 1GiB |
| Memory % | 5.58% |
| CPU % | 1.37% |
| PIDs | 24 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8035/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    21.96ms   23.27ms 100.35ms   79.42%
    Req/Sec     4.18k     1.71k   10.82k    80.25%
  166644 requests in 20.02s, 1.73GB read
Requests/sec:   8324.23
Transfer/sec:     88.44MB
```
