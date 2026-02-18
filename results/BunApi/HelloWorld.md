# Bun API — Hello World Benchmark

**Tested**: 2026-02-18 03:20:34 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8002/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 109,049.66 |
| Avg Latency | 1.14ms |
| Max Latency | 52.55ms |
| Total Requests | 2,181,135 |
| Transfer/sec | 14.04MB |
| Port | 8002 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 1.14ms | 1.02ms | 52.55ms | 96.57% |
| Req/Sec | 54.82k | 6.77k | 70.84k | 70.75% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 15.36MiB |
| Memory Limit | 1GiB |
| Memory % | 1.50% |
| CPU % | 0.56% |
| PIDs | 15 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8002/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.14ms    1.02ms  52.55ms   96.57%
    Req/Sec    54.82k     6.77k   70.84k    70.75%
  2181135 requests in 20.00s, 280.81MB read
Requests/sec: 109049.66
Transfer/sec:     14.04MB
```
