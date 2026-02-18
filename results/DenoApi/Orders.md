# Deno API — Orders Benchmark

**Tested**: 2026-02-18 02:37:11 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8011/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 1,433.79 |
| Avg Latency    | 83.48ms  |
| Max Latency    | 146.43ms |
| Total Requests | 28,700   |
| Transfer/sec   | 15.33MB  |
| Port           | 8011     |

## Thread Stats

| Stat    | Avg     | Stdev  | Max      | +/- Stdev |
| ------- | ------- | ------ | -------- | --------- |
| Latency | 83.48ms | 6.54ms | 146.43ms | 77.64%    |
| Req/Sec | 720.35  | 71.51  | 0.87k    | 70.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 102.6MiB |
| Memory Limit | 1GiB     |
| Memory %     | 10.02%   |
| CPU %        | 0.00%    |
| PIDs         | 18       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8011/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    83.48ms    6.54ms 146.43ms   77.64%
    Req/Sec   720.35     71.51     0.87k    70.50%
  28700 requests in 20.02s, 306.90MB read
Requests/sec:   1433.79
Transfer/sec:     15.33MB
```
