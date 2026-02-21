# JS Bun Express — Hello World Benchmark

**Tested**: 2026-02-21 11:36:14 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8049/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 98,480.07 |
| Avg Latency    | 1.36ms    |
| Max Latency    | 90.91ms   |
| Total Requests | 1,969,829 |
| Transfer/sec   | 14.09MB   |
| Port           | 8049      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 1.36ms | 2.39ms | 90.91ms | 99.23%    |
| Req/Sec | 49.49k | 5.91k  | 59.14k  | 85.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 55.44MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.41%    |
| CPU %        | 1.62%    |
| PIDs         | 17       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8049/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.36ms    2.39ms  90.91ms   99.23%
    Req/Sec    49.49k     5.91k   59.14k    85.50%
  1969829 requests in 20.00s, 281.79MB read
Requests/sec:  98480.07
Transfer/sec:     14.09MB
```
