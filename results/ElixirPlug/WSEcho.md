# Elixir Plug — WS Echo Benchmark

**Tested**: 2026-05-31 18:27:21 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8034/ws/echo`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,728.58\* |
| Avg Latency | 9.978801ms |
| Max Latency | 27ms |
| Total Requests | 54,709 |
| Transfer/sec | N/A |
| Port | 8034 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 9.978801 | 18 | 27 |
| Iteration Duration | 43.9ms | 127.81ms | — |
| Checks Passed | 51.64% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 158MiB |
| Memory Limit | 1GiB |
| Memory % | 15.43% |
| CPU % | 0.22% |
| PIDs | 85 |

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


running (01.0s), 120/120 VUs, 6477 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 13609 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 18707 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 24002 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 28517 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 30401 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 32265 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 34031 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 35814 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 37492 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 39235 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 41047 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 42832 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 44377 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 46064 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 47816 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 49387 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 51125 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 52819 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 54579 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=18


  █ TOTAL RESULTS 

    checks_total.......: 54709  2728.581268/s
    checks_succeeded...: 51.64% 28256 out of 54709
    checks_failed......: 48.35% 26453 out of 54709

    ✗ ws connected (101)
      ↳  51% — ✓ 28256 / ✗ 26453

    EXECUTION
    iteration_duration..........: avg=43.9ms   min=675.31µs med=27.06ms max=409.14ms p(90)=100.62ms p(95)=127.81ms
    iterations..................: 54709  2728.581268/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 6.0 MB 297 kB/s
    data_sent...................: 12 MB  576 kB/s

    WEBSOCKET
    ws_connecting...............: avg=38.62ms  min=343.84µs med=17.44ms max=409.06ms p(90)=100.48ms p(95)=127.69ms
    ws_echo_messages_received...: 28256  1409.25245/s
    ws_echo_messages_sent.......: 28256  1409.25245/s
    ws_echo_rtt_ms..............: avg=9.978801 min=0        med=10      max=27       p(90)=16       p(95)=18      
    ws_msgs_received............: 28256  1409.25245/s
    ws_msgs_sent................: 28256  1409.25245/s
    ws_session_duration.........: avg=43.84ms  min=640.66µs med=26.99ms max=409.08ms p(90)=100.54ms p(95)=127.72ms
    ws_sessions.................: 54709  2728.581268/s




running (20.1s), 000/120 VUs, 54709 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
