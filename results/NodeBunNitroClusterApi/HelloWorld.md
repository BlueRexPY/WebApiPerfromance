# JS Bun Nitro Cluster — Hello World Benchmark

**Tested**: 2026-03-08 22:43:18 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8095/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 78,106.64 |
| Avg Latency    | 3.98ms    |
| Max Latency    | 92.04ms   |
| Total Requests | 1,563,030 |
| Transfer/sec   | 10.06MB   |
| Port           | 8095      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 3.98ms | 9.49ms | 92.04ms | 93.72%    |
| Req/Sec | 39.27k | 13.02k | 57.39k  | 84.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 100.2MiB |
| Memory Limit | 1GiB     |
| Memory %     | 9.79%    |
| CPU %        | 2.14%    |
| PIDs         | 35       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8095/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.98ms    9.49ms  92.04ms   93.72%
    Req/Sec    39.27k    13.02k   57.39k    84.25%
  1563030 requests in 20.01s, 201.23MB read
Requests/sec:  78106.64
Transfer/sec:     10.06MB
```
