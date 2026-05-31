# C# Carter AOT — WS Echo Benchmark

**Tested**: 2026-05-30 20:59:19 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8036/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,961.26 |
| Avg Latency | 9.970103ms |
| Max Latency | 118ms |
| Total Requests | 59,346 |
| Transfer/sec | N/A |
| Port | 8036 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 2.659972 | 6 | 26 |
| Iteration Duration | 36.45ms | 105.6ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 57.62MiB |
| Memory Limit | 1GiB |
| Memory % | 4.12% |
| CPU % | 0.01% |
| PIDs | 20 |

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


running (01.0s), 120/120 VUs, 14451 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 22677 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 29129 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 31152 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 33315 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 35475 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 37638 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 39845 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 42035 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 44159 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 46324 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 48515 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 50696 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 52901 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 55087 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 57093 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 59303 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 61373 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 63537 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 65763 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=6


  █ TOTAL RESULTS 

    checks_total.......: 65894  3285.390115/s
    checks_succeeded...: 43.37% 28580 out of 65894
    checks_failed......: 56.62% 37314 out of 65894

    ✗ ws connected (101)
      ↳  43% — ✓ 28580 / ✗ 37314

    EXECUTION
    iteration_duration..........: avg=36.45ms  min=1.52ms   med=22.06ms max=358.71ms p(90)=85.77ms p(95)=105.6ms 
    iterations..................: 65894  3285.390115/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 6.1 MB 302 kB/s
    data_sent...................: 14 MB  683 kB/s

    WEBSOCKET
    ws_connecting...............: avg=35.16ms  min=532.12µs med=20.95ms max=358.67ms p(90)=85.67ms p(95)=105.44ms
    ws_echo_messages_received...: 28580  1424.962053/s
    ws_echo_messages_sent.......: 28580  1424.962053/s
    ws_echo_rtt_ms..............: avg=2.659972 min=0        med=2       max=26       p(90)=5       p(95)=6       
    ws_msgs_received............: 28580  1424.962053/s
    ws_msgs_sent................: 28580  1424.962053/s
    ws_session_duration.........: avg=36.39ms  min=1.49ms   med=21.98ms max=358.67ms p(90)=85.7ms  p(95)=105.46ms
    ws_sessions.................: 65894  3285.390115/s




running (20.1s), 000/120 VUs, 65894 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
