# Deno API — Hello World Benchmark

**Tested**: 2026-02-18 04:45:26 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8011/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 85,530.71 |
| Avg Latency    | 1.46ms    |
| Max Latency    | 73.17ms   |
| Total Requests | 1,710,746 |
| Transfer/sec   | 12.89MB   |
| Port           | 8011      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 1.46ms | 1.58ms | 73.17ms | 98.42%    |
| Req/Sec | 43.01k | 9.02k  | 60.90k  | 66.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 34.98MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.42%    |
| CPU %        | 0.00%    |
| PIDs         | 18       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8011/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.46ms    1.58ms  73.17ms   98.42%
    Req/Sec    43.01k     9.02k   60.90k    66.25%
  1710746 requests in 20.00s, 257.78MB read
Requests/sec:  85530.71
Transfer/sec:     12.89MB
```
