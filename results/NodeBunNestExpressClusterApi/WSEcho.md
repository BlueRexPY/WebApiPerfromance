# JS Bun NestJS Express Cluster — WS Echo Benchmark

**Tested**: 2026-05-30 23:19:41 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8059/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,103.79 |
| Avg Latency | 2.070683ms |
| Max Latency | 49ms |
| Total Requests | 62,218 |
| Transfer/sec | N/A |
| Port | 8059 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 2.070683 | 5 | 49 |
| Iteration Duration | 38.6ms | 114.94ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 102.2MiB |
| Memory Limit | 1GiB |
| Memory % | 9.98% |
| CPU % | 0.69% |
| PIDs | 27 |

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


running (01.0s), 120/120 VUs, 10919 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 12657 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 14383 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 16355 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 22322 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 28561 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 30481 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 32456 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 36422 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 42293 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 44057 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 45959 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 48024 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 50108 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 52174 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 54188 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 56270 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 58052 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 60008 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 62078 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=5


  █ TOTAL RESULTS 

    checks_total.......: 62218  3103.793823/s
    checks_succeeded...: 47.43% 29512 out of 62218
    checks_failed......: 52.56% 32706 out of 62218

    ✗ ws connected (101)
      ↳  47% — ✓ 29512 / ✗ 32706

    EXECUTION
    iteration_duration..........: avg=38.6ms   min=275.29µs med=23.89ms max=375.32ms p(90)=91.09ms p(95)=114.94ms
    iterations..................: 62218  3103.793823/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 5.8 MB 287 kB/s
    data_sent...................: 13 MB  650 kB/s

    WEBSOCKET
    ws_connecting...............: avg=37.46ms  min=165.73µs med=22.53ms max=375.23ms p(90)=90.88ms p(95)=114.83ms
    ws_echo_messages_received...: 29512  1472.229312/s
    ws_echo_messages_sent.......: 29512  1472.229312/s
    ws_echo_rtt_ms..............: avg=2.070683 min=0        med=1       max=49       p(90)=4       p(95)=5       
    ws_msgs_received............: 29512  1472.229312/s
    ws_msgs_sent................: 29512  1472.229312/s
    ws_session_duration.........: avg=38.53ms  min=255.69µs med=23.82ms max=375.24ms p(90)=91.01ms p(95)=114.87ms
    ws_sessions.................: 62218  3103.793823/s




running (20.0s), 000/120 VUs, 62218 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
