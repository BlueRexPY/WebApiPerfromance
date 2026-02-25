# Fortran GFortran — Orders Benchmark

**Tested**: 2026-02-25 07:09:34 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8083/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 0.05 |
| Avg Latency | 1.99ms |
| Max Latency | 1.99ms |
| Total Requests | 1 |
| Transfer/sec | 567.46B |
| Port | 8083 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 1.99ms | 0.00us | 1.99ms | 100.00% |
| Req/Sec | 10.00 | 0.00 | 10.00 | 100.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 14.47MiB |
| Memory Limit | 1GiB |
| Memory % | 1.41% |
| CPU % | 0.00% |
| PIDs | 121 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8083/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.99ms    0.00us   1.99ms  100.00%
    Req/Sec    10.00      0.00    10.00    100.00%
  1 requests in 20.02s, 11.09KB read
Requests/sec:      0.05
Transfer/sec:     567.46B
```
