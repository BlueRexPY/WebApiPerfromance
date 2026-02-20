# Elixir Phoenix — MongoDB Orders Benchmark

**Tested**: 2026-02-19 07:35:26 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8007/mongodb/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,480.10 |
| Avg Latency | 34.51ms |
| Max Latency | 117.93ms |
| Total Requests | 69,648 |
| Transfer/sec | 37.39MB |
| Port | 8007 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 34.51ms | 7.69ms | 117.93ms | 72.59% |
| Req/Sec | 1.75k | 141.92 | 2.07k | 78.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 219.9MiB |
| Memory Limit | 1GiB |
| Memory % | 21.48% |
| CPU % | 0.18% |
| PIDs | 85 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8007/mongodb/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    34.51ms    7.69ms 117.93ms   72.59%
    Req/Sec     1.75k   141.92     2.07k    78.50%
  69648 requests in 20.01s, 748.24MB read
Requests/sec:   3480.10
Transfer/sec:     37.39MB
```
