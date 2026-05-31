# Dart Shelf — WS Echo Benchmark

**Tested**: 2026-05-31 18:16:02 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8085/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,175.80 |
| Avg Latency | 2.567083ms |
| Max Latency | 81ms |
| Total Requests | 23,538 |
| Transfer/sec | N/A |
| Port | 8085 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 2.567083 | 3 | 81 |
| Iteration Duration | 101.99ms | 413.78ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 87.59MiB |
| Memory Limit | 1GiB |
| Memory % | 8.55% |
| CPU % | 0.00% |
| PIDs | 5 |

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


running (01.0s), 120/120 VUs, 311 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 630 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 881 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 1153 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 1405 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 1650 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 1857 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 2087 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 3237 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 4684 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 6171 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 7778 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 9016 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 10200 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 11567 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 12887 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 14234 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 15246 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 19181 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 23390 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=3


  █ TOTAL RESULTS 

    checks_total.......: 23538   1175.795652/s
    checks_succeeded...: 100.00% 23538 out of 23538
    checks_failed......: 0.00%   0 out of 23538

    ✓ ws connected (101)

    EXECUTION
    iteration_duration..........: avg=101.99ms min=10.83ms med=58.72ms max=7.21s p(90)=318.53ms p(95)=413.78ms
    iterations..................: 23538  1175.795652/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 3.7 MB 186 kB/s
    data_sent...................: 5.4 MB 272 kB/s

    WEBSOCKET
    ws_connecting...............: avg=99.3ms   min=10.2ms  med=56.71ms max=7.2s  p(90)=314.32ms p(95)=401.18ms
    ws_echo_messages_received...: 23538  1175.795652/s
    ws_echo_messages_sent.......: 23538  1175.795652/s
    ws_echo_rtt_ms..............: avg=2.567083 min=0       med=2       max=81    p(90)=3        p(95)=3       
    ws_msgs_received............: 23538  1175.795652/s
    ws_msgs_sent................: 23538  1175.795652/s
    ws_session_duration.........: avg=101.95ms min=10.8ms  med=58.68ms max=7.21s p(90)=318.49ms p(95)=413.74ms
    ws_sessions.................: 23538  1175.795652/s




running (20.0s), 000/120 VUs, 23538 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s

time="2026-05-31T20:15:40+02:00" level=warning msg="Error from API server" error="listen tcp 127.0.0.1:6565: bind: address already in use"
```
