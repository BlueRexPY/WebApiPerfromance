# JS Node NestJS Express — WS Echo Benchmark

**Tested**: 2026-05-30 22:42:00 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8029/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,714.05 |
| Avg Latency | 0.437995ms |
| Max Latency | 17ms |
| Total Requests | 54,392 |
| Transfer/sec | N/A |
| Port | 8029 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0.437995 | 1 | 17 |
| Iteration Duration | 44.16ms | 115.89ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 23.57MiB |
| Memory Limit | 1GiB |
| Memory % | 2.30% |
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


running (01.0s), 120/120 VUs, 4360 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 11057 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 16152 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 20180 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 24369 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 28111 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 30141 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 32118 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 33682 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 35598 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 37375 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 39399 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 41414 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 43398 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 45255 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 46995 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 48934 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 50813 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 52443 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 54263 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=1


  █ TOTAL RESULTS 

    checks_total.......: 54392  2714.053435/s
    checks_succeeded...: 51.94% 28256 out of 54392
    checks_failed......: 48.05% 26136 out of 54392

    ✗ ws connected (101)
      ↳  51% — ✓ 28256 / ✗ 26136

    EXECUTION
    iteration_duration..........: avg=44.16ms  min=10.36ms med=32.07ms max=420.57ms p(90)=92.26ms p(95)=115.89ms
    iterations..................: 54392  2714.053435/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 4.5 MB 223 kB/s
    data_sent...................: 12 MB  574 kB/s

    WEBSOCKET
    ws_connecting...............: avg=43.81ms  min=5.72ms  med=31.52ms max=420.48ms p(90)=92.1ms  p(95)=115.77ms
    ws_echo_messages_received...: 28256  1409.918625/s
    ws_echo_messages_sent.......: 28256  1409.918625/s
    ws_echo_rtt_ms..............: avg=0.437995 min=0       med=0       max=17       p(90)=1       p(95)=1       
    ws_msgs_received............: 28256  1409.918625/s
    ws_msgs_sent................: 28256  1409.918625/s
    ws_session_duration.........: avg=44.1ms   min=10.25ms med=32.02ms max=420.49ms p(90)=92.15ms p(95)=115.82ms
    ws_sessions.................: 54392  2714.053435/s




running (20.0s), 000/120 VUs, 54392 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
