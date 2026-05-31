# JS Node Nitro — WS Echo Benchmark

**Tested**: 2026-05-31 16:44:15 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8089/ws/echo`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,013.74\* |
| Avg Latency | 0.419562ms |
| Max Latency | 31ms |
| Total Requests | 60,408 |
| Transfer/sec | N/A |
| Port | 8089 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0.419562 | 1 | 31 |
| Iteration Duration | 39.76ms | 99.87ms | — |
| Checks Passed | 46.74% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 33.17MiB |
| Memory Limit | 1GiB |
| Memory % | 3.24% |
| CPU % | 0.00% |
| PIDs | 7 |

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


running (01.0s), 120/120 VUs, 4035 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 10270 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 16080 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 20395 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 23848 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 25909 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 30199 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 33052 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 35311 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 37617 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 39880 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 42148 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 44446 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 46755 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 49041 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 51328 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 53627 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 55786 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 58068 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 60265 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=1


  █ TOTAL RESULTS 

    checks_total.......: 60408  3013.735243/s
    checks_succeeded...: 46.74% 28239 out of 60408
    checks_failed......: 53.25% 32169 out of 60408

    ✗ ws connected (101)
      ↳  46% — ✓ 28239 / ✗ 32169

    EXECUTION
    iteration_duration..........: avg=39.76ms  min=4.83ms med=28.68ms max=321.62ms p(90)=79.81ms p(95)=99.87ms
    iterations..................: 60408  3013.735243/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 4.5 MB 223 kB/s
    data_sent...................: 13 MB  630 kB/s

    WEBSOCKET
    ws_connecting...............: avg=39.47ms  min=4.59ms med=28.23ms max=321.53ms p(90)=79.74ms p(95)=99.81ms
    ws_echo_messages_received...: 28239  1408.834418/s
    ws_echo_messages_sent.......: 28239  1408.834418/s
    ws_echo_rtt_ms..............: avg=0.419562 min=0      med=0       max=31       p(90)=1       p(95)=1      
    ws_msgs_received............: 28239  1408.834418/s
    ws_msgs_sent................: 28239  1408.834418/s
    ws_session_duration.........: avg=39.71ms  min=4.79ms med=28.63ms max=321.55ms p(90)=79.77ms p(95)=99.82ms
    ws_sessions.................: 60408  3013.735243/s




running (20.0s), 000/120 VUs, 60408 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
