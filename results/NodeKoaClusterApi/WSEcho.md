# JS Node Koa Cluster — WS Echo Benchmark

**Tested**: 2026-05-30 22:53:02 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8044/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,021.33 |
| Avg Latency | 6.369718ms |
| Max Latency | 25ms |
| Total Requests | 40,525 |
| Transfer/sec | N/A |
| Port | 8044 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 6.369718 | 22 | 25 |
| Iteration Duration | 59.29ms | 126.01ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 49.52MiB |
| Memory Limit | 1GiB |
| Memory % | 4.84% |
| CPU % | 0.00% |
| PIDs | 21 |

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


running (01.0s), 120/120 VUs, 2024 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4055 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 6161 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 8288 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 10357 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 12397 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 14418 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 16467 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 18579 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 20627 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 22690 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 24621 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 26673 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 28462 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 30435 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 32445 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 34445 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 36204 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 38245 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 40386 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=22


  █ TOTAL RESULTS 

    checks_total.......: 40525  2021.334699/s
    checks_succeeded...: 0.70%  284 out of 40525
    checks_failed......: 99.29% 40241 out of 40525

    ✗ ws connected (101)
      ↳  0% — ✓ 284 / ✗ 40241

    EXECUTION
    iteration_duration..........: avg=59.29ms  min=11.43ms med=53.18ms max=328.69ms p(90)=106.6ms  p(95)=126.01ms
    iterations..................: 40525  2021.334699/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 45 kB  2.2 kB/s
    data_sent...................: 7.7 MB 385 kB/s

    WEBSOCKET
    ws_connecting...............: avg=59.14ms  min=11.37ms med=52.99ms max=328.65ms p(90)=106.51ms p(95)=125.82ms
    ws_echo_messages_received...: 284    14.165553/s
    ws_echo_messages_sent.......: 284    14.165553/s
    ws_echo_rtt_ms..............: avg=6.369718 min=0       med=4       max=25       p(90)=16       p(95)=22      
    ws_msgs_received............: 284    14.165553/s
    ws_msgs_sent................: 284    14.165553/s
    ws_session_duration.........: avg=59.21ms  min=11.39ms med=53.11ms max=328.65ms p(90)=106.54ms p(95)=125.87ms
    ws_sessions.................: 40525  2021.334699/s




running (20.0s), 000/120 VUs, 40525 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
