# JS Bun Express — WS Echo Benchmark

**Tested**: 2026-05-30 23:01:08 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8049/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,119.38 |
| Avg Latency | 3.115103ms |
| Max Latency | 24ms |
| Total Requests | 42,480 |
| Transfer/sec | N/A |
| Port | 8049 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 3.115103 | 7 | 24 |
| Iteration Duration | 56.54ms | 127.25ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 36.31MiB |
| Memory Limit | 1GiB |
| Memory % | 3.55% |
| CPU % | 0.17% |
| PIDs | 16 |

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


running (01.0s), 120/120 VUs, 3881 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 5604 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 7582 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 9665 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 11722 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 13818 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 15932 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 17947 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 20055 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 21867 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 23609 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 25508 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 27578 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 29696 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 31864 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 33968 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 36087 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 38203 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 40197 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 42348 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=7


  █ TOTAL RESULTS 

    checks_total.......: 42480  2119.380413/s
    checks_succeeded...: 6.42%  2728 out of 42480
    checks_failed......: 93.57% 39752 out of 42480

    ✗ ws connected (101)
      ↳  6% — ✓ 2728 / ✗ 39752

    EXECUTION
    iteration_duration..........: avg=56.54ms  min=3.8ms  med=49.44ms max=314.14ms p(90)=106.67ms p(95)=127.25ms
    iterations..................: 42480  2119.380413/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 532 kB 27 kB/s
    data_sent...................: 8.2 MB 408 kB/s

    WEBSOCKET
    ws_connecting...............: avg=56.24ms  min=2.61ms med=49.27ms max=314.07ms p(90)=106.56ms p(95)=127.09ms
    ws_echo_messages_received...: 2728   136.103337/s
    ws_echo_messages_sent.......: 2728   136.103337/s
    ws_echo_rtt_ms..............: avg=3.115103 min=0      med=2       max=24       p(90)=6        p(95)=7       
    ws_msgs_received............: 2728   136.103337/s
    ws_msgs_sent................: 2728   136.103337/s
    ws_session_duration.........: avg=56.47ms  min=3.77ms med=49.37ms max=314.09ms p(90)=106.58ms p(95)=127.11ms
    ws_sessions.................: 42480  2119.380413/s




running (20.0s), 000/120 VUs, 42480 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
