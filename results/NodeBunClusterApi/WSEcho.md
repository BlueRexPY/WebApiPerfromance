# JS Node Bun Cluster — WS Echo Benchmark

**Tested**: 2026-05-30 21:16:39 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8047/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,451.95 |
| Avg Latency | 1.077663ms |
| Max Latency | 32ms |
| Total Requests | 69,180 |
| Transfer/sec | N/A |
| Port | 8047 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 1.077663 | 3 | 32 |
| Iteration Duration | 34.71ms | 101.31ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 43.36MiB |
| Memory Limit | 1GiB |
| Memory % | 4.23% |
| CPU % | 0.95% |
| PIDs | 47 |

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


running (01.0s), 120/120 VUs, 5727 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 10081 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 20704 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 22923 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 25138 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 27389 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 36263 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 41698 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 43905 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 46079 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 48782 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 51035 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 53290 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 55545 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 57734 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 60007 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 62326 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 64570 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 66742 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 69050 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=3


  █ TOTAL RESULTS 

    checks_total.......: 69180  3451.945606/s
    checks_succeeded...: 43.40% 30027 out of 69180
    checks_failed......: 56.59% 39153 out of 69180

    ✗ ws connected (101)
      ↳  43% — ✓ 30027 / ✗ 39153

    EXECUTION
    iteration_duration..........: avg=34.71ms  min=389.39µs med=21.65ms max=287.25ms p(90)=81.45ms p(95)=101.31ms
    iterations..................: 69180  3451.945606/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 5.9 MB 292 kB/s
    data_sent...................: 14 MB  717 kB/s

    WEBSOCKET
    ws_connecting...............: avg=34.11ms  min=203.37µs med=20.99ms max=287.22ms p(90)=81.32ms p(95)=101.19ms
    ws_echo_messages_received...: 30027  1498.288099/s
    ws_echo_messages_sent.......: 30027  1498.288099/s
    ws_echo_rtt_ms..............: avg=1.077663 min=0        med=1       max=32       p(90)=2       p(95)=3       
    ws_msgs_received............: 30027  1498.288099/s
    ws_msgs_sent................: 30027  1498.288099/s
    ws_session_duration.........: avg=34.65ms  min=362.13µs med=21.59ms max=287.23ms p(90)=81.37ms p(95)=101.23ms
    ws_sessions.................: 69180  3451.945606/s




running (20.0s), 000/120 VUs, 69180 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
