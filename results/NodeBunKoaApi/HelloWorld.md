# JS Bun Koa — Hello World Benchmark

**Tested**: 2026-02-21 11:39:42 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8052/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 88,181.55 |
| Avg Latency    | 1.56ms    |
| Max Latency    | 67.38ms   |
| Total Requests | 1,763,855 |
| Transfer/sec   | 12.61MB   |
| Port           | 8052      |

## Thread Stats

| Stat    | Avg    | Stdev  | Max     | +/- Stdev |
| ------- | ------ | ------ | ------- | --------- |
| Latency | 1.56ms | 2.51ms | 67.38ms | 98.92%    |
| Req/Sec | 44.33k | 5.00k  | 50.88k  | 90.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 60.54MiB |
| Memory Limit | 1GiB     |
| Memory %     | 5.91%    |
| CPU %        | 5.37%    |
| PIDs         | 16       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8052/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.56ms    2.51ms  67.38ms   98.92%
    Req/Sec    44.33k     5.00k   50.88k    90.75%
  1763855 requests in 20.00s, 252.32MB read
Requests/sec:  88181.55
Transfer/sec:     12.61MB
```
