# Deno API — Orders Benchmark

**Tested**: 2026-02-18 04:45:52 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8011/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 1,135.43 |
| Avg Latency    | 105.51ms |
| Max Latency    | 317.83ms |
| Total Requests | 22,736   |
| Transfer/sec   | 12.14MB  |
| Port           | 8011     |

## Thread Stats

| Stat    | Avg      | Stdev   | Max      | +/- Stdev |
| ------- | -------- | ------- | -------- | --------- |
| Latency | 105.51ms | 17.53ms | 317.83ms | 81.57%    |
| Req/Sec | 570.44   | 90.92   | 848.00   | 78.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 104.5MiB |
| Memory Limit | 1GiB     |
| Memory %     | 10.21%   |
| CPU %        | 0.00%    |
| PIDs         | 18       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8011/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   105.51ms   17.53ms 317.83ms   81.57%
    Req/Sec   570.44     90.92   848.00     78.50%
  22736 requests in 20.02s, 243.13MB read
Requests/sec:   1135.43
Transfer/sec:     12.14MB
```
