# Kotlin Ktor — WS Echo Benchmark

**Tested**: 2026-05-31 18:19:06 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8027/ws/echo`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,959.68\* |
| Avg Latency | 38.62147ms |
| Max Latency | 290ms |
| Total Requests | 39,313 |
| Transfer/sec | N/A |
| Port | 8027 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 38.62147 | 90 | 290 |
| Iteration Duration | 61.13ms | 130.4ms | — |
| Checks Passed | 71.79% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 163.1MiB |
| Memory Limit | 1GiB |
| Memory % | 15.92% |
| CPU % | 0.11% |
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


running (01.0s), 120/120 VUs, 483 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 1488 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 3027 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 4805 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 7014 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 9128 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 11543 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 14232 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 16607 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 18792 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 21292 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 23922 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 26602 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 28873 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 30467 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 32180 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 34010 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 35871 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 37423 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 39186 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=90


  █ TOTAL RESULTS 

    checks_total.......: 39313  1959.675994/s
    checks_succeeded...: 71.79% 28225 out of 39313
    checks_failed......: 28.20% 11088 out of 39313

    ✗ ws connected (101)
      ↳  71% — ✓ 28225 / ✗ 11088

    EXECUTION
    iteration_duration..........: avg=61.13ms  min=3.07ms   med=63.95ms max=459.93ms p(90)=102.61ms p(95)=130.4ms 
    iterations..................: 39313  1959.675994/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 4.5 MB 222 kB/s
    data_sent...................: 8.6 MB 430 kB/s

    WEBSOCKET
    ws_connecting...............: avg=33.26ms  min=341.15µs med=13.81ms max=344.19ms p(90)=82.41ms  p(95)=108.36ms
    ws_echo_messages_received...: 28225  1406.960927/s
    ws_echo_messages_sent.......: 28225  1406.960927/s
    ws_echo_rtt_ms..............: avg=38.62147 min=0        med=21      max=290      p(90)=80       p(95)=90      
    ws_msgs_received............: 28225  1406.960927/s
    ws_msgs_sent................: 28225  1406.960927/s
    ws_session_duration.........: avg=61.07ms  min=3.04ms   med=63.9ms  max=459.85ms p(90)=102.54ms p(95)=130.36ms
    ws_sessions.................: 39313  1959.675994/s




running (20.1s), 000/120 VUs, 39313 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
