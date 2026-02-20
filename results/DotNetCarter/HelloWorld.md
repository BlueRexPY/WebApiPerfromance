# C# Carter — Hello World Benchmark

**Tested**: 2026-02-20 05:58:54 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8035/`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 70,599.66 |
| Avg Latency | 4.23ms |
| Max Latency | 79.56ms |
| Total Requests | 1,412,302 |
| Transfer/sec | 12.52MB |
| Port | 8035 |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | 4.23ms | 9.68ms | 79.56ms | 93.21% |
| Req/Sec | 35.50k | 16.30k | 108.70k | 79.00% |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 31.99MiB |
| Memory Limit | 1GiB |
| Memory % | 3.12% |
| CPU % | 0.56% |
| PIDs | 22 |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8035/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.23ms    9.68ms  79.56ms   93.21%
    Req/Sec    35.50k    16.30k  108.70k    79.00%
  1412302 requests in 20.00s, 250.52MB read
Requests/sec:  70599.66
Transfer/sec:     12.52MB
```
