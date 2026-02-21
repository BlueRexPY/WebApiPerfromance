# Crystal Kemal — Hello World Benchmark

**Tested**: 2026-02-21 13:11:14 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8061/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 113,007.91 |
| Avg Latency | 1.11ms |
| Max Latency | 55.78ms |
| Total Requests | 2,260,355 |
| Transfer/sec | 19.40MB |
| Port | 8061 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 1.11ms | 1.34ms | 55.78ms | 99.59% |
| Req/Sec | 56.81k | 5.56k | 63.61k | 91.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 13.49MiB |
| Memory Limit | 1GiB |
| Memory % | 1.32% |
| CPU % | 0.00% |
| PIDs | 1 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8061/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.11ms    1.34ms  55.78ms   99.59%
    Req/Sec    56.81k     5.56k   63.61k    91.00%
  2260355 requests in 20.00s, 388.02MB read
Requests/sec: 113007.91
Transfer/sec:     19.40MB
```
