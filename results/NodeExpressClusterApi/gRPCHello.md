# JS Node Express Cluster — gRPC Hello Benchmark

**Tested**: 2026-06-19 23:50:21 UTC
**Command**: `ghz --insecure --proto api.proto --call api.ApiService/SayHello -c 120 -z 20s 127.0.0.1:9041`

> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.

## Summary

| Metric         | Value       |
| -------------- | ----------- |
| Requests/sec   | 20,030.53\* |
| Avg Latency    | 5.64ms      |
| Max Latency    | 53.86ms     |
| Total Requests | 400,615     |
| Transfer/sec   |             |
| Port           | 9041        |

## Raw Output

```
Summary:
  Count:	400615
  Total:	20.00 s
  Slowest:	53.86 ms
  Fastest:	0.17 ms
  Average:	5.64 ms
  Requests/sec:	20030.53

Response time histogram:
  0.174  [1]      |
  5.543  [249715] |∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎
  10.911 [129452] |∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎
  16.280 [19273]  |∎∎∎
  21.648 [1710]   |
  27.017 [111]    |
  32.386 [113]    |
  37.754 [0]      |
  43.123 [0]      |
  48.491 [37]     |
  53.860 [83]     |

Latency distribution:
  10 % in 3.15 ms
  25 % in 3.81 ms
  50 % in 4.72 ms
  75 % in 6.98 ms
  90 % in 9.55 ms
  95 % in 11.03 ms
  99 % in 14.21 ms

Status code distribution:
  [OK]            400495 responses
  [Unavailable]   120 responses

Error distribution:
  [120]   rpc error: code = Unavailable desc = error reading from server: read tcp 127.0.0.1:37148->127.0.0.1:9041: use of closed network connection
```
