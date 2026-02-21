# Crystal Lucky — Hello World Benchmark

**Tested**: 2026-02-21 13:36:38 UTC
**Command**: `wrk -t 2 -c 120 -d 20s http://127.0.0.1:8062/`

## Summary

| Metric         | Value     |
| -------------- | --------- |
| Requests/sec   | 66,714.76 |
| Avg Latency    | 1.80ms    |
| Max Latency    | 21.13ms   |
| Total Requests | 1,334,446 |
| Transfer/sec   | 16.03MB   |
| Port           | 8062      |

## Thread Stats

| Stat    | Avg    | Stdev    | Max     | +/- Stdev |
| ------- | ------ | -------- | ------- | --------- |
| Latency | 1.80ms | 384.01us | 21.13ms | 82.05%    |
| Req/Sec | 33.52k | 1.55k    | 35.82k  | 78.50%    |

## Resource Usage

| Metric       | Value    |
| ------------ | -------- |
| Memory Usage | 14.34MiB |
| Memory Limit | 1GiB     |
| Memory %     | 1.40%    |
| CPU %        | 0.00%    |
| PIDs         | 1        |

## Raw Output

```
Running 20s test @ http://127.0.0.1:8062/
  2 threads and 120 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.80ms  384.01us  21.13ms   82.05%
    Req/Sec    33.52k     1.55k   35.82k    78.50%
  1334446 requests in 20.00s, 320.70MB read
Requests/sec:  66714.76
Transfer/sec:     16.03MB
```
