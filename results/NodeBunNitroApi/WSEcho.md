# JS Bun Nitro — WS Echo Benchmark

**Tested**: 2026-05-31 16:45:20 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8094/ws/echo`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,252.29\* |
| Avg Latency | 3.192332ms |
| Max Latency | 35ms |
| Total Requests | 65,169 |
| Transfer/sec | N/A |
| Port | 8094 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 3.192332 | 7 | 35 |
| Iteration Duration | 36.84ms | 101.24ms | — |
| Checks Passed | 43.46% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 18.09MiB |
| Memory Limit | 1GiB |
| Memory % | 1.77% |
| CPU % | 0.18% |
| PIDs | 11 |

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


running (01.0s), 120/120 VUs, 9908 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 17771 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 25362 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 29879 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 32054 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 34234 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 36460 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 38684 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 40884 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 43115 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 45320 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 47537 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 49737 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 51926 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 54092 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 56298 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 58487 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 60700 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 62875 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 102/120 VUs, 65067 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=7


  █ TOTAL RESULTS 

    checks_total.......: 65169  3252.294009/s
    checks_succeeded...: 43.46% 28326 out of 65169
    checks_failed......: 56.53% 36843 out of 65169

    ✗ ws connected (101)
      ↳  43% — ✓ 28326 / ✗ 36843

    EXECUTION
    iteration_duration..........: avg=36.84ms  min=3.26ms med=22.06ms max=300.05ms p(90)=82.37ms p(95)=101.24ms
    iterations..................: 65169  3252.294009/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 5.5 MB 276 kB/s
    data_sent...................: 14 MB  676 kB/s

    WEBSOCKET
    ws_connecting...............: avg=35.32ms  min=2.74ms med=20.16ms max=300ms    p(90)=82.27ms p(95)=101.13ms
    ws_echo_messages_received...: 28326  1413.624271/s
    ws_echo_messages_sent.......: 28326  1413.624271/s
    ws_echo_rtt_ms..............: avg=3.192332 min=0      med=3       max=35       p(90)=6       p(95)=7       
    ws_msgs_received............: 28326  1413.624271/s
    ws_msgs_sent................: 28326  1413.624271/s
    ws_session_duration.........: avg=36.78ms  min=3.2ms  med=22ms    max=300.01ms p(90)=82.31ms p(95)=101.16ms
    ws_sessions.................: 65169  3252.294009/s




running (20.0s), 000/120 VUs, 65169 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
