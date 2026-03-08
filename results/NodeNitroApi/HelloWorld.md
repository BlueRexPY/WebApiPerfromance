# JS Node Nitro — Hello World Benchmark

**Tested**: 2026-03-08 22:35:56 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8089/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 51,681.46 |
| Avg Latency    | 3.09ms    |
| Max Latency    | 349.84ms  |
| Total Requests | 1,033,975 |
| Transfer/sec   | 8.97MB    |
| Port           | 8089      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max      | +/- Stdev |
| ------- | ------ | ------- | -------- | --------- |
| Latency | 3.09ms | 11.18ms | 349.84ms | 99.28%    |
| Req/Sec | 25.97k | 3.42k   | 31.21k   | 78.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 36.48MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.56%    |
| CPU %        | 0.10%    |
| PIDs         | 7        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8089/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.09ms   11.18ms 349.84ms   99.28%
    Req/Sec    25.97k     3.42k   31.21k    78.75%
  1033975 requests in 20.01s, 179.47MB read
Requests/sec:  51681.46
Transfer/sec:      8.97MB
```
