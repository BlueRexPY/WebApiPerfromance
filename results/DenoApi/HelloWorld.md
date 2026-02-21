# JS Deno — Hello World Benchmark

**Tested**: 2026-02-20 11:14:40 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8011/`

## Summary

| Metric         | Value      |
| -------------- | ---------- |
| Requests/sec   | 142,008.63 |
| Avg Latency    | 0.89ms     |
| Max Latency    | 55.51ms    |
| Total Requests | 2,840,349  |
| Transfer/sec   | 21.40MB    |
| Port           | 8011       |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 0.89ms | 1.18ms | 55.51ms | 99.62%    |
| Req/Sec | 71.37k | 4.72k  | 74.66k  | 93.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 108.3MiB |
| Memory Limit | 1GiB     |
| Memory %     | 10.58%   |
| CPU %        | 0.00%    |
| PIDs         | 18       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8011/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     0.89ms    1.18ms  55.51ms   99.62%
    Req/Sec    71.37k     4.72k   74.66k    93.00%
  2840349 requests in 20.00s, 427.99MB read
Requests/sec: 142008.63
Transfer/sec:     21.40MB
```
