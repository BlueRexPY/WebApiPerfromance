# Fastify API — Hello World Benchmark

**Tested**: 2026-02-18 04:22:25 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8003/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 78,952.91 |
| Avg Latency | 1.88ms |
| Max Latency | 231.46ms |
| Total Requests | 1,579,112 |
| Transfer/sec | 14.91MB |
| Port | 8003 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 1.88ms | 5.84ms | 231.46ms | 99.53% |
| Req/Sec | 39.69k | 7.49k | 49.62k | 77.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 27.55MiB |
| Memory Limit | 1GiB |
| Memory % | 2.69% |
| CPU % | 0.01% |
| PIDs | 7 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8003/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.88ms    5.84ms 231.46ms   99.53%
    Req/Sec    39.69k     7.49k   49.62k    77.50%
  1579112 requests in 20.00s, 298.18MB read
Requests/sec:  78952.91
Transfer/sec:     14.91MB
```
