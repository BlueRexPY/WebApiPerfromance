# Erlang Cowboy — WS Echo Benchmark

**Tested**: 2026-05-31 17:03:30 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8010/ws/echo`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,773.64\* |
| Avg Latency | 0.739617ms |
| Max Latency | 21ms |
| Total Requests | 55,598 |
| Transfer/sec | N/A |
| Port | 8010 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0.739617 | 3 | 21 |
| Iteration Duration | 43.2ms | 127.37ms | — |
| Checks Passed | 51.10% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 94.12MiB |
| Memory Limit | 1GiB |
| Memory % | 9.19% |
| CPU % | 0.06% |
| PIDs | 86 |

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


running (01.0s), 120/120 VUs, 7418 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 14596 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 20375 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 26071 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 29379 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 30508 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 31510 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 32614 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 33979 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 35705 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 37593 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 39513 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 41421 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 43355 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 45351 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 47416 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 49436 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 51501 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 53519 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 55460 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=3


  █ TOTAL RESULTS 

    checks_total.......: 55598  2773.639069/s
    checks_succeeded...: 51.10% 28412 out of 55598
    checks_failed......: 48.89% 27186 out of 55598

    ✗ ws connected (101)
      ↳  51% — ✓ 28412 / ✗ 27186

    EXECUTION
    iteration_duration..........: avg=43.2ms   min=1.76ms med=23.48ms max=487.99ms p(90)=97.86ms p(95)=127.37ms
    iterations..................: 55598  2773.639069/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 6.0 MB 299 kB/s
    data_sent...................: 12 MB  585 kB/s

    WEBSOCKET
    ws_connecting...............: avg=42.7ms   min=1.04ms med=22.63ms max=487.93ms p(90)=97.77ms p(95)=127.28ms
    ws_echo_messages_received...: 28412  1417.400504/s
    ws_echo_messages_sent.......: 28412  1417.400504/s
    ws_echo_rtt_ms..............: avg=0.739617 min=0      med=0       max=21       p(90)=2       p(95)=3       
    ws_msgs_received............: 28412  1417.400504/s
    ws_msgs_sent................: 28412  1417.400504/s
    ws_session_duration.........: avg=43.14ms  min=1.7ms  med=23.42ms max=487.95ms p(90)=97.79ms p(95)=127.32ms
    ws_sessions.................: 55598  2773.639069/s




running (20.0s), 000/120 VUs, 55598 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
