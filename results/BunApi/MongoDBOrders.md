# Bun API — MongoDB Orders Benchmark

**Tested**: 2026-02-19 07:31:07 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/mongodb/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,051.48 |
| Avg Latency | 39.29ms |
| Max Latency | 118.07ms |
| Total Requests | 61,054 |
| Transfer/sec | 32.44MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 39.29ms | 9.26ms | 118.07ms | 66.49% |
| Req/Sec | 1.53k | 134.68 | 1.74k | 84.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 102.1MiB |
| Memory Limit | 1GiB |
| Memory % | 9.97% |
| CPU % | 2.07% |
| PIDs | 17 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/mongodb/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    39.29ms    9.26ms 118.07ms   66.49%
    Req/Sec     1.53k   134.68     1.74k    84.50%
  61054 requests in 20.01s, 648.98MB read
Requests/sec:   3051.48
Transfer/sec:     32.44MB
```
