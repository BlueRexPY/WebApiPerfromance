# Python FastAPI — WS Echo Benchmark

**Tested**: 2026-05-31 16:13:28 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8004/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,825.62 |
| Avg Latency | 12.456024ms |
| Max Latency | 168ms |
| Total Requests | 36,574 |
| Transfer/sec | N/A |
| Port | 8004 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 12.456024 | 58 | 168 |
| Iteration Duration | 65.66ms | 156.12ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 229MiB |
| Memory Limit | 1GiB |
| Memory % | 22.36% |
| CPU % | 0.72% |
| PIDs | 26 |

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


running (01.0s), 120/120 VUs, 1039 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 1932 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 3051 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 4859 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 6349 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 7392 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 8597 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 9695 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 12043 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 14255 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 16484 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 18653 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 20871 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 22989 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 25158 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 27355 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 29553 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 31876 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 34130 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 36433 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=58


  █ TOTAL RESULTS 

    checks_total.......: 36574  1825.624989/s
    checks_succeeded...: 29.59% 10824 out of 36574
    checks_failed......: 70.40% 25750 out of 36574

    ✗ ws connected (101)
      ↳  29% — ✓ 10824 / ✗ 25750

    EXECUTION
    iteration_duration..........: avg=65.66ms   min=10.22ms med=58.08ms max=277.73ms p(90)=119.71ms p(95)=156.12ms
    iterations..................: 36574  1825.624989/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 2.3 MB 115 kB/s
    data_sent...................: 7.4 MB 369 kB/s

    WEBSOCKET
    ws_connecting...............: avg=61.85ms   min=7.57ms  med=56.23ms max=277.66ms p(90)=109.6ms  p(95)=124.08ms
    ws_echo_messages_received...: 10824  540.289957/s
    ws_echo_messages_sent.......: 10824  540.289957/s
    ws_echo_rtt_ms..............: avg=12.456024 min=0       med=6       max=168      p(90)=54       p(95)=58      
    ws_msgs_received............: 10824  540.289957/s
    ws_msgs_sent................: 10824  540.289957/s
    ws_session_duration.........: avg=65.6ms    min=10.18ms med=58.01ms max=277.67ms p(90)=119.63ms p(95)=156.05ms
    ws_sessions.................: 36574  1825.624989/s




running (20.0s), 000/120 VUs, 36574 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
