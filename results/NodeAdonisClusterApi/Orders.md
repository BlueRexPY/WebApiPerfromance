# JS Node AdonisJS Cluster — Orders Benchmark

**Tested**: 2026-03-08 22:38:59 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8091/orders`

## Summary

| Metric         | Value    |
| -------------- | -------- |
| Requests/sec   | 3,130.45 |
| Avg Latency    | 39.51ms  |
| Max Latency    | 589.91ms |
| Total Requests | 62,632   |
| Transfer/sec   | 33.59MB  |
| Port           | 8091     |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 39.51ms | 23.43ms | 589.91ms | 93.41%    |
| Req/Sec | 1.57k   | 213.27  | 1.97k    | 75.25%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 140.1MiB |
| Memory Limit | 1GiB     |
| Memory %     | 13.68%   |
| CPU %        | 0.03%    |
| PIDs         | 31       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8091/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    39.51ms   23.43ms 589.91ms   93.41%
    Req/Sec     1.57k   213.27     1.97k    75.25%
  62632 requests in 20.01s, 672.09MB read
Requests/sec:   3130.45
Transfer/sec:     33.59MB
```
