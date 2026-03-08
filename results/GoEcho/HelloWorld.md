# Go Echo — Hello World Benchmark

**Tested**: 2026-03-08 22:53:02 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8096/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 21,563.48 |
| Avg Latency    | 20.81ms   |
| Max Latency    | 130.26ms  |
| Total Requests | 431,640   |
| Transfer/sec   | 2.80MB    |
| Port           | 8096      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 20.81ms | 26.66ms | 130.26ms | 79.04%    |
| Req/Sec | 10.84k  | 5.37k   | 25.88k   | 82.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 18.28MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.78%    |
| CPU %        | 0.00%    |
| PIDs         | 41       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8096/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    20.81ms   26.66ms 130.26ms   79.04%
    Req/Sec    10.84k     5.37k   25.88k    82.50%
  431640 requests in 20.02s, 55.98MB read
Requests/sec:  21563.48
Transfer/sec:      2.80MB
```
