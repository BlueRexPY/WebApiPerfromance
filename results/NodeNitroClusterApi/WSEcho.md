# JS Node Nitro Cluster — WS Echo Benchmark

**Tested**: 2026-05-31 16:46:22 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8093/ws/echo`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,722.21\* |
| Avg Latency | 0.820072ms |
| Max Latency | 78ms |
| Total Requests | 54,554 |
| Transfer/sec | N/A |
| Port | 8093 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0.820072 | 2 | 78 |
| Iteration Duration | 44.02ms | 99.09ms | — |
| Checks Passed | 51.76% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 89.02MiB |
| Memory Limit | 1GiB |
| Memory % | 8.69% |
| CPU % | 0.00% |
| PIDs | 21 |

## Raw Output

```
/\      Grafana   /‾‾/  
    /\  /  \     |\  __   /  /   
   /  \/    \    | |/ /  /   ‾‾\ 
  /          \   |   (  |  (‾)  |
 / __________ \  |_|\_\  \_____/ 


     execution: local
        script: /home/admin/Projects/Python/WebApiPerfromance/benchmarks/ws/echo.js
        output: -

     scenarios: (100.00%) 1 scenario, 120 max VUs, 50s max duration (incl. graceful stop):
              * default: 120 looping VUs for 20s (gracefulStop: 30s)


running (01.0s), 120/120 VUs, 2173 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4750 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 7712 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 11298 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 16732 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 19021 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 22021 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 24806 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 27994 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 32028 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 34328 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 36595 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 38877 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 40893 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 43144 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 45431 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 47695 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 49950 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 52198 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 111/120 VUs, 54445 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=2


  █ TOTAL RESULTS 

    checks_total.......: 54554  2722.207311/s
    checks_succeeded...: 51.76% 28239 out of 54554
    checks_failed......: 48.23% 26315 out of 54554

    ✗ ws connected (101)
      ↳  51% — ✓ 28239 / ✗ 26315

    EXECUTION
    iteration_duration..........: avg=44.02ms  min=10.08ms med=38.71ms max=269.64ms p(90)=82.03ms p(95)=99.09ms
    iterations..................: 54554  2722.207311/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 4.5 MB 223 kB/s
    data_sent...................: 12 MB  575 kB/s

    WEBSOCKET
    ws_connecting...............: avg=43.49ms  min=9.76ms  med=38.07ms max=269.59ms p(90)=81.76ms p(95)=98.87ms
    ws_echo_messages_received...: 28239  1409.106798/s
    ws_echo_messages_sent.......: 28239  1409.106798/s
    ws_echo_rtt_ms..............: avg=0.820072 min=0       med=1       max=78       p(90)=1       p(95)=2      
    ws_msgs_received............: 28239  1409.106798/s
    ws_msgs_sent................: 28239  1409.106798/s
    ws_session_duration.........: avg=43.97ms  min=10.06ms med=38.65ms max=269.6ms  p(90)=81.98ms p(95)=99ms   
    ws_sessions.................: 54554  2722.207311/s




running (20.0s), 000/120 VUs, 54554 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
