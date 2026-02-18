# Fastify API — Hello World Benchmark

**Tested**: 2026-02-18 02:28:10 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8003/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 94,293.78 |
| Avg Latency    | 1.74ms    |
| Max Latency    | 262.72ms  |
| Total Requests | 1,886,129 |
| Transfer/sec   | 17.81MB   |
| Port           | 8003      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max      | +/- Stdev |
| ------- | ------ | ------ | -------- | --------- |
| Latency | 1.74ms | 7.54ms | 262.72ms | 99.39%    |
| Req/Sec | 47.39k | 6.21k  | 54.00k   | 87.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 28.61MiB |
| Memory Limit | 1GiB     |
| Memory %     | 2.79%    |
| CPU %        | 0.00%    |
| PIDs         | 7        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8003/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.74ms    7.54ms 262.72ms   99.39%
    Req/Sec    47.39k     6.21k   54.00k    87.50%
  1886129 requests in 20.00s, 356.15MB read
Requests/sec:  94293.78
Transfer/sec:     17.81MB
```
