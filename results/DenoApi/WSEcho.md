# JS Deno — WS Echo Benchmark

**Tested**: 2026-05-30 22:15:17 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8011/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,225.12 |
| Avg Latency | 6.631169ms |
| Max Latency | 40ms |
| Total Requests | 44,603 |
| Transfer/sec | N/A |
| Port | 8011 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 6.631169 | 18 | 40 |
| Iteration Duration | 53.85ms | 119.48ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 24.98MiB |
| Memory Limit | 1GiB |
| Memory % | 2.44% |
| CPU % | 0.00% |
| PIDs | 18 |

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


running (01.0s), 120/120 VUs, 2143 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4437 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 6664 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 8676 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 10619 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 12921 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 15153 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 17430 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 19682 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 21972 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 24210 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 26441 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 28542 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 30827 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 33017 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 35154 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 37463 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 39725 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 42165 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 44471 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=18


  █ TOTAL RESULTS 

    checks_total.......: 44603  2225.116797/s
    checks_succeeded...: 0.86%  385 out of 44603
    checks_failed......: 99.13% 44218 out of 44603

    ✗ ws connected (101)
      ↳  0% — ✓ 385 / ✗ 44218

    EXECUTION
    iteration_duration..........: avg=53.85ms  min=6.82ms med=47.03ms max=297.76ms p(90)=100.11ms p(95)=119.48ms
    iterations..................: 44603  2225.116797/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 75 kB  3.7 kB/s
    data_sent...................: 8.5 MB 424 kB/s

    WEBSOCKET
    ws_connecting...............: avg=53.7ms   min=4.62ms med=46.89ms max=297.68ms p(90)=99.82ms  p(95)=119.34ms
    ws_echo_messages_received...: 385    19.206555/s
    ws_echo_messages_sent.......: 385    19.206555/s
    ws_echo_rtt_ms..............: avg=6.631169 min=0      med=5       max=40       p(90)=15       p(95)=18      
    ws_msgs_received............: 385    19.206555/s
    ws_msgs_sent................: 385    19.206555/s
    ws_session_duration.........: avg=53.79ms  min=6.79ms med=46.94ms max=297.7ms  p(90)=100.04ms p(95)=119.36ms
    ws_sessions.................: 44603  2225.116797/s




running (20.0s), 000/120 VUs, 44603 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
