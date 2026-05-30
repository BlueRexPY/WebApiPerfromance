# JS Node Bun Cluster — WS Echo Benchmark

**Tested**: 2026-05-30 21:24:30 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8047/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,126.45 |
| Avg Latency | 1.140738ms |
| Max Latency | 42ms |
| Total Requests | 62,679 |
| Transfer/sec | N/A |
| Port | 8047 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 1.140738 | 3 | 42 |
| Iteration Duration | 38.32ms | 120.44ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 42.55MiB |
| Memory Limit | 1GiB |
| Memory % | 4.15% |
| CPU % | 0.51% |
| PIDs | 45 |

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


running (01.0s), 120/120 VUs, 3971 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 10982 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 23680 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 32137 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 34591 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 36368 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 38260 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 40169 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 42004 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 43933 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 45462 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 47272 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 49167 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 51039 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 52715 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 54669 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 56643 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 58649 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 60527 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 62537 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=3


  █ TOTAL RESULTS 

    checks_total.......: 62679  3126.450526/s
    checks_succeeded...: 47.86% 29999 out of 62679
    checks_failed......: 52.13% 32680 out of 62679

    ✗ ws connected (101)
      ↳  47% — ✓ 29999 / ✗ 32680

    EXECUTION
    iteration_duration..........: avg=38.32ms  min=328.46µs med=21.54ms max=357.93ms p(90)=95.46ms p(95)=120.44ms
    iterations..................: 62679  3126.450526/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 5.9 MB 292 kB/s
    data_sent...................: 13 MB  655 kB/s

    WEBSOCKET
    ws_connecting...............: avg=37.62ms  min=173.51µs med=20.7ms  max=357.9ms  p(90)=95.33ms p(95)=120.36ms
    ws_echo_messages_received...: 29999  1496.360652/s
    ws_echo_messages_sent.......: 29999  1496.360652/s
    ws_echo_rtt_ms..............: avg=1.140738 min=0        med=1       max=42       p(90)=2       p(95)=3       
    ws_msgs_received............: 29999  1496.360652/s
    ws_msgs_sent................: 29999  1496.360652/s
    ws_session_duration.........: avg=38.25ms  min=314.39µs med=21.46ms max=357.9ms  p(90)=95.36ms p(95)=120.4ms 
    ws_sessions.................: 62679  3126.450526/s




running (20.0s), 000/120 VUs, 62679 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
