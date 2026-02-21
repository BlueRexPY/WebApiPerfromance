# Kotlin Ktor — Hello World Benchmark

**Tested**: 2026-02-20 05:30:37 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8027/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 26,392.53 |
| Avg Latency    | 13.53ms   |
| Max Latency    | 108.33ms  |
| Total Requests | 527,895   |
| Transfer/sec   | 2.47MB    |
| Port           | 8027      |

## Thread Stats

| Stat    | Avg     | Stdev   | Max      | +/- Stdev |
| ------- | ------- | ------- | -------- | --------- |
| Latency | 13.53ms | 18.54ms | 108.33ms | 81.43%    |
| Req/Sec | 13.27k  | 8.39k   | 53.09k   | 79.75%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 173.5MiB |
| Memory Limit | 1GiB     |
| Memory %     | 16.94%   |
| CPU %        | 0.30%    |
| PIDs         | 27       |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8027/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    13.53ms   18.54ms 108.33ms   81.43%
    Req/Sec    13.27k     8.39k   53.09k    79.75%
  527895 requests in 20.00s, 49.34MB read
Requests/sec:  26392.53
Transfer/sec:      2.47MB
```
