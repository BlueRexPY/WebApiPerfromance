# JS Bun Express Cluster — WS Echo Benchmark

**Tested**: 2026-05-30 23:11:17 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8055/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,371.23 |
| Avg Latency | 25.330913ms |
| Max Latency | 523ms |
| Total Requests | 47,534 |
| Transfer/sec | N/A |
| Port | 8055 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 1.781474 | 4 | 53 |
| Iteration Duration | 37.74ms | 110.39ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 114.6MiB |
| Memory Limit | 1GiB |
| Memory % | 9.25% |
| CPU % | 0.63% |
| PIDs | 48 |

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


running (01.0s), 120/120 VUs, 9288 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 18504 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 20587 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 22629 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 25275 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 33254 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 37157 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 39158 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 41152 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 43443 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 45423 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 47377 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 49318 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 51405 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 53479 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 55405 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 57504 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 59464 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 61429 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 63504 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=4


  █ TOTAL RESULTS 

    checks_total.......: 63636  3174.299962/s
    checks_succeeded...: 46.34% 29493 out of 63636
    checks_failed......: 53.65% 34143 out of 63636

    ✗ ws connected (101)
      ↳  46% — ✓ 29493 / ✗ 34143

    EXECUTION
    iteration_duration..........: avg=37.74ms  min=357.34µs med=23.9ms  max=348.6ms  p(90)=88.41ms p(95)=110.39ms
    iterations..................: 63636  3174.299962/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 5.8 MB 287 kB/s
    data_sent...................: 13 MB  663 kB/s

    WEBSOCKET
    ws_connecting...............: avg=36.77ms  min=172.53µs med=22.79ms max=348.5ms  p(90)=88.31ms p(95)=110.22ms
    ws_echo_messages_received...: 29493  1471.174002/s
    ws_echo_messages_sent.......: 29493  1471.174002/s
    ws_echo_rtt_ms..............: avg=1.781474 min=0        med=1       max=53       p(90)=3       p(95)=4       
    ws_msgs_received............: 29493  1471.174002/s
    ws_msgs_sent................: 29493  1471.174002/s
    ws_session_duration.........: avg=37.68ms  min=332.08µs med=23.84ms max=348.53ms p(90)=88.35ms p(95)=110.34ms
    ws_sessions.................: 63636  3174.299962/s




running (20.0s), 000/120 VUs, 63636 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
