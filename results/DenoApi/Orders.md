# Deno API — Orders Benchmark

**Tested**: 2026-02-18 03:30:59 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8011/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,329.41 |
| Avg Latency | 90.02ms |
| Max Latency | 128.34ms |
| Total Requests | 26,623 |
| Transfer/sec | 14.22MB |
| Port | 8011 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 90.02ms | 7.33ms | 128.34ms | 77.98% |
| Req/Sec | 668.02 | 75.04 | 0.90k | 82.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 104.3MiB |
| Memory Limit | 1GiB |
| Memory % | 10.19% |
| CPU % | 0.00% |
| PIDs | 18 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8011/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    90.02ms    7.33ms 128.34ms   77.98%
    Req/Sec   668.02     75.04     0.90k    82.75%
  26623 requests in 20.03s, 284.69MB read
Requests/sec:   1329.41
Transfer/sec:     14.22MB
```
