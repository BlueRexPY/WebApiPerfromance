# Elixir Phoenix — PostgreSQL Orders Benchmark

**Tested**: 2026-02-19 07:35:01 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8007/postgresql/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 4,865.06 |
| Avg Latency | 24.79ms |
| Max Latency | 162.79ms |
| Total Requests | 97,347 |
| Transfer/sec | 53.40MB |
| Port | 8007 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 24.79ms | 4.78ms | 162.79ms | 97.14% |
| Req/Sec | 2.45k | 194.42 | 2.75k | 88.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 223.2MiB |
| Memory Limit | 1GiB |
| Memory % | 21.80% |
| CPU % | 0.82% |
| PIDs | 85 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8007/postgresql/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    24.79ms    4.78ms 162.79ms   97.14%
    Req/Sec     2.45k   194.42     2.75k    88.75%
  97347 requests in 20.01s, 1.04GB read
Requests/sec:   4865.06
Transfer/sec:     53.40MB
```
