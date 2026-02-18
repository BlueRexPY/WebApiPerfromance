# Deno API — Hello World Benchmark

**Tested**: 2026-02-18 02:36:45 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8011/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 127,777.84 |
| Avg Latency    | 1.02ms     |
| Max Latency    | 75.07ms    |
| Total Requests | 2,555,872  |
| Transfer/sec   | 19.25MB    |
| Port           | 8011       |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 1.02ms | 1.79ms | 75.07ms | 99.58%    |
| Req/Sec | 64.23k | 5.58k  | 72.97k  | 88.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 43.31MiB |
| Memory Limit | 1GiB     |
| Memory %     | 4.23%    |
| CPU %        | 0.00%    |
| PIDs         | 18       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8011/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.02ms    1.79ms  75.07ms   99.58%
    Req/Sec    64.23k     5.58k   72.97k    88.25%
  2555872 requests in 20.00s, 385.12MB read
Requests/sec: 127777.84
Transfer/sec:     19.25MB
```
