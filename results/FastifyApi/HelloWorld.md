# JS Fastify — Hello World Benchmark

**Tested**: 2026-02-20 11:08:11 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8003/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 100,921.74 |
| Avg Latency | 1.64ms |
| Max Latency | 245.68ms |
| Total Requests | 2,018,702 |
| Transfer/sec | 19.06MB |
| Port | 8003 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 1.64ms | 7.06ms | 245.68ms | 99.41% |
| Req/Sec | 50.73k | 6.44k | 60.76k | 89.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 90.28MiB |
| Memory Limit | 1GiB |
| Memory % | 8.82% |
| CPU % | 0.01% |
| PIDs | 7 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8003/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.64ms    7.06ms 245.68ms   99.41%
    Req/Sec    50.73k     6.44k   60.76k    89.00%
  2018702 requests in 20.00s, 381.19MB read
Requests/sec: 100921.74
Transfer/sec:     19.06MB
```
