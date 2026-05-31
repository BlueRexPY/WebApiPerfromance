# JS Node Bun Cluster — WS Echo Benchmark

**Tested**: 2026-05-31 16:42:05 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8047/ws/echo`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,360.19\* |
| Avg Latency | 1.05131ms |
| Max Latency | 26ms |
| Total Requests | 67,336 |
| Transfer/sec | N/A |
| Port | 8047 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 1.05131 | 3 | 26 |
| Iteration Duration | 35.66ms | 106.16ms | — |
| Checks Passed | 44.31% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 44.36MiB |
| Memory Limit | 1GiB |
| Memory % | 4.33% |
| CPU % | 1.38% |
| PIDs | 52 |

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


running (01.0s), 120/120 VUs, 17214 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 26254 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 31117 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 33147 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 35208 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 37309 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 39428 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 41654 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 43796 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 45960 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 48113 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 50057 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 52270 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 54476 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 56740 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 58562 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 60754 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 62911 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 65048 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 67179 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=3


  █ TOTAL RESULTS 

    checks_total.......: 67336  3360.18501/s
    checks_succeeded...: 44.31% 29838 out of 67336
    checks_failed......: 55.68% 37498 out of 67336

    ✗ ws connected (101)
      ↳  44% — ✓ 29838 / ✗ 37498

    EXECUTION
    iteration_duration..........: avg=35.66ms min=354.27µs med=21.77ms max=309.37ms p(90)=84.98ms p(95)=106.16ms
    iterations..................: 67336  3360.18501/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 5.8 MB 290 kB/s
    data_sent...................: 14 MB  700 kB/s

    WEBSOCKET
    ws_connecting...............: avg=35.07ms min=179.71µs med=21.21ms max=309.31ms p(90)=84.88ms p(95)=106.08ms
    ws_echo_messages_received...: 29838  1488.968758/s
    ws_echo_messages_sent.......: 29838  1488.968758/s
    ws_echo_rtt_ms..............: avg=1.05131 min=0        med=1       max=26       p(90)=2       p(95)=3       
    ws_msgs_received............: 29838  1488.968758/s
    ws_msgs_sent................: 29838  1488.968758/s
    ws_session_duration.........: avg=35.6ms  min=314.63µs med=21.7ms  max=309.33ms p(90)=84.9ms  p(95)=106.1ms 
    ws_sessions.................: 67336  3360.18501/s




running (20.0s), 000/120 VUs, 67336 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
