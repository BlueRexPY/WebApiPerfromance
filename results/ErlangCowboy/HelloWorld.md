# Erlang Cowboy — Hello World Benchmark

**Tested**: 2026-02-18 03:29:29 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8010/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 81,949.53 |
| Avg Latency | 1.53ms |
| Max Latency | 43.57ms |
| Total Requests | 1,639,094 |
| Transfer/sec | 11.80MB |
| Port | 8010 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 1.53ms | 0.96ms | 43.57ms | 89.23% |
| Req/Sec | 41.20k | 4.29k | 48.76k | 69.50% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 95.89MiB |
| Memory Limit | 1GiB |
| Memory % | 9.36% |
| CPU % | 0.21% |
| PIDs | 86 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8010/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.53ms    0.96ms  43.57ms   89.23%
    Req/Sec    41.20k     4.29k   48.76k    69.50%
  1639094 requests in 20.00s, 236.07MB read
Requests/sec:  81949.53
Transfer/sec:     11.80MB
```
