# Express API — Hello World Benchmark

**Tested**: 2026-02-18 04:48:35 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8014/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 25,475.41 |
| Avg Latency    | 5.52ms    |
| Max Latency    | 398.78ms  |
| Total Requests | 509,579   |
| Transfer/sec   | 4.79MB    |
| Port           | 8014      |

## Thread Stats

| Stat    | Avg    | Stdev   | Max      | +/- Stdev |
| ------- | ------ | ------- | -------- | --------- |
| Latency | 5.52ms | 12.76ms | 398.78ms | 99.38%    |
| Req/Sec | 12.80k | 1.17k   | 14.90k   | 78.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 38.84MiB |
| Memory Limit | 1GiB     |
| Memory %     | 3.79%    |
| CPU %        | 0.01%    |
| PIDs         | 7        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8014/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     5.52ms   12.76ms 398.78ms   99.38%
    Req/Sec    12.80k     1.17k   14.90k    78.75%
  509579 requests in 20.00s, 95.74MB read
Requests/sec:  25475.41
Transfer/sec:      4.79MB
```
