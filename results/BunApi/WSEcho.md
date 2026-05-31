# JS Bun — WS Echo Benchmark

**Tested**: 2026-05-30 21:26:42 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8002/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,697.11 |
| Avg Latency | 7.786266ms |
| Max Latency | 44ms |
| Total Requests | 54,057 |
| Transfer/sec | N/A |
| Port | 8002 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 1.875678 | 4 | 21 |
| Iteration Duration | 36.24ms | 103.91ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 23.1MiB |
| Memory Limit | 1GiB |
| Memory % | 1.75% |
| CPU % | 0.18% |
| PIDs | 16 |

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


running (01.0s), 120/120 VUs, 14563 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 23007 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 28936 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 31087 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 33297 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 36046 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 38279 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 40074 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 42058 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 44213 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 46321 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 48418 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 50616 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 52741 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 54972 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 57185 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 59468 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 61666 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 63887 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 66100 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=4


  █ TOTAL RESULTS 

    checks_total.......: 66256  3306.413877/s
    checks_succeeded...: 43.65% 28925 out of 66256
    checks_failed......: 56.34% 37331 out of 66256

    ✗ ws connected (101)
      ↳  43% — ✓ 28925 / ✗ 37331

    EXECUTION
    iteration_duration..........: avg=36.24ms  min=1.47ms med=22.69ms max=276.51ms p(90)=84.19ms p(95)=103.91ms
    iterations..................: 66256  3306.413877/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 5.6 MB 282 kB/s
    data_sent...................: 14 MB  687 kB/s

    WEBSOCKET
    ws_connecting...............: avg=35.29ms  min=1.05ms med=21.76ms max=276.41ms p(90)=84.08ms p(95)=103.74ms
    ws_echo_messages_received...: 28925  1443.462047/s
    ws_echo_messages_sent.......: 28925  1443.462047/s
    ws_echo_rtt_ms..............: avg=1.875678 min=0      med=2       max=21       p(90)=3       p(95)=4       
    ws_msgs_received............: 28925  1443.462047/s
    ws_msgs_sent................: 28925  1443.462047/s
    ws_session_duration.........: avg=36.18ms  min=1.45ms med=22.62ms max=276.42ms p(90)=84.12ms p(95)=103.81ms
    ws_sessions.................: 66256  3306.413877/s




running (20.0s), 000/120 VUs, 66256 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
