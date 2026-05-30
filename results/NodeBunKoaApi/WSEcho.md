# JS Bun Koa — WS Echo Benchmark

**Tested**: 2026-05-30 23:05:05 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8052/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,071.59 |
| Avg Latency | 3.601675ms |
| Max Latency | 26ms |
| Total Requests | 41,526 |
| Transfer/sec | N/A |
| Port | 8052 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 3.601675 | 8 | 26 |
| Iteration Duration | 57.84ms | 130.46ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 36.67MiB |
| Memory Limit | 1GiB |
| Memory % | 3.58% |
| CPU % | 0.21% |
| PIDs | 17 |

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


running (01.0s), 120/120 VUs, 3402 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 5278 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 7008 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 8968 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 11048 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 13106 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 15170 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 17228 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 19267 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 21144 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 22962 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 24710 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 26868 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 29030 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 30971 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 33046 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 35085 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 37098 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 39231 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 41383 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=8


  █ TOTAL RESULTS 

    checks_total.......: 41526  2071.586376/s
    checks_succeeded...: 6.03%  2508 out of 41526
    checks_failed......: 93.96% 39018 out of 41526

    ✗ ws connected (101)
      ↳  6% — ✓ 2508 / ✗ 39018

    EXECUTION
    iteration_duration..........: avg=57.84ms  min=3.72ms med=50.45ms max=414.23ms p(90)=108.84ms p(95)=130.46ms
    iterations..................: 41526  2071.586376/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 489 kB 24 kB/s
    data_sent...................: 8.0 MB 399 kB/s

    WEBSOCKET
    ws_connecting...............: avg=57.51ms  min=2.71ms med=50.28ms max=414.07ms p(90)=108.71ms p(95)=130.3ms 
    ws_echo_messages_received...: 2508   125.115316/s
    ws_echo_messages_sent.......: 2508   125.115316/s
    ws_echo_rtt_ms..............: avg=3.601675 min=0      med=3       max=26       p(90)=6        p(95)=8       
    ws_msgs_received............: 2508   125.115316/s
    ws_msgs_sent................: 2508   125.115316/s
    ws_session_duration.........: avg=57.76ms  min=3.67ms med=50.37ms max=414.12ms p(90)=108.77ms p(95)=130.35ms
    ws_sessions.................: 41526  2071.586376/s




running (20.0s), 000/120 VUs, 41526 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
