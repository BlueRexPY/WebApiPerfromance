# JS Deno Parallel — Orders Benchmark

**Tested**: 2026-02-21 06:52:42 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8048/orders`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 18,937.49 |
| Avg Latency    | 6.33ms    |
| Max Latency    | 17.64ms   |
| Total Requests | 378,848   |
| Transfer/sec   | 202.51MB  |
| Port           | 8048      |

## Thread Stats

| Stat    | Avg    | Stdev    | Max     | +/- Stdev |
| ------- | ------ | -------- | ------- | --------- |
| Latency | 6.33ms | 729.07us | 17.64ms | 76.07%    |
| Req/Sec | 9.52k  | 318.34   | 10.33k  | 72.00%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 76.05MiB |
| Memory Limit | 1GiB     |
| Memory %     | 7.43%    |
| CPU %        | 0.00%    |
| PIDs         | 20       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8048/orders
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     6.33ms  729.07us  17.64ms   76.07%
    Req/Sec     9.52k   318.34    10.33k    72.00%
  378848 requests in 20.01s, 3.96GB read
Requests/sec:  18937.49
Transfer/sec:    202.51MB
```
