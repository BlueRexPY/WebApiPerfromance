# Go Fiber — WS Echo Benchmark

**Tested**: 2026-05-31 16:17:04 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8008/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,232.92 |
| Avg Latency | 2.874156ms |
| Max Latency | 35ms |
| Total Requests | 44,748 |
| Transfer/sec | N/A |
| Port | 8008 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 2.874156 | 8 | 35 |
| Iteration Duration | 53.67ms | 127.51ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 11.64MiB |
| Memory Limit | 1GiB |
| Memory % | 1.14% |
| CPU % | 0.01% |
| PIDs | 37 |

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


running (01.0s), 120/120 VUs, 6527 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 8800 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 10519 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 11927 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 13303 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 14713 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 16709 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 19012 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 21288 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 23575 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 25867 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 28120 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 30131 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 31992 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 34214 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 36411 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 38571 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 40609 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 42800 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 44606 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=8


  █ TOTAL RESULTS 

    checks_total.......: 44748  2232.917456/s
    checks_succeeded...: 14.89% 6667 out of 44748
    checks_failed......: 85.10% 38081 out of 44748

    ✗ ws connected (101)
      ↳  14% — ✓ 6667 / ✗ 38081

    EXECUTION
    iteration_duration..........: avg=53.67ms  min=2.37ms med=45.5ms  max=346.59ms p(90)=104.72ms p(95)=127.51ms
    iterations..................: 44748  2232.917456/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 1.4 MB 70 kB/s
    data_sent...................: 8.8 MB 438 kB/s

    WEBSOCKET
    ws_connecting...............: avg=53.12ms  min=1.62ms med=45.28ms max=346.45ms p(90)=104.61ms p(95)=127.36ms
    ws_echo_messages_received...: 6667   332.682146/s
    ws_echo_messages_sent.......: 6667   332.682146/s
    ws_echo_rtt_ms..............: avg=2.874156 min=0      med=2       max=35       p(90)=5        p(95)=8       
    ws_msgs_received............: 6667   332.682146/s
    ws_msgs_sent................: 6667   332.682146/s
    ws_session_duration.........: avg=53.6ms   min=2.34ms med=45.44ms max=346.5ms  p(90)=104.63ms p(95)=127.43ms
    ws_sessions.................: 44748  2232.917456/s




running (20.0s), 000/120 VUs, 44748 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
