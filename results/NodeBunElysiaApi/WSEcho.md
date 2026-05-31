# JS Bun Elysia — WS Echo Benchmark

**Tested**: 2026-05-30 23:23:54 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8086/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,044.21 |
| Avg Latency | 34.065384ms |
| Max Latency | 341ms |
| Total Requests | 40,993 |
| Transfer/sec | N/A |
| Port | 8086 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 3.172423 | 6 | 26 |
| Iteration Duration | 41.64ms | 122.72ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 83.29MiB |
| Memory Limit | 1GiB |
| Memory % | 4.74% |
| CPU % | 0.34% |
| PIDs | 30 |

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


running (01.0s), 120/120 VUs, 1763 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 5663 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 7457 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 9265 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 10747 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 19319 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 22150 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 23950 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 25761 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 31759 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 35868 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 37603 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 39291 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 44124 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 48587 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 50363 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 52139 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 53963 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 55768 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 57542 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=6


  █ TOTAL RESULTS 

    checks_total.......: 57684  2876.513473/s
    checks_succeeded...: 49.43% 28517 out of 57684
    checks_failed......: 50.56% 29167 out of 57684

    ✗ ws connected (101)
      ↳  49% — ✓ 28517 / ✗ 29167

    EXECUTION
    iteration_duration..........: avg=41.64ms  min=3.12ms med=22.64ms max=328.47ms p(90)=98.44ms p(95)=122.72ms
    iterations..................: 57684  2876.513473/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 5.6 MB 277 kB/s
    data_sent...................: 12 MB  605 kB/s

    WEBSOCKET
    ws_connecting...............: avg=39.92ms  min=2.22ms med=20.58ms max=328.39ms p(90)=98.2ms  p(95)=122.61ms
    ws_echo_messages_received...: 28517  1422.050043/s
    ws_echo_messages_sent.......: 28517  1422.050043/s
    ws_echo_rtt_ms..............: avg=3.172423 min=0      med=3       max=26       p(90)=5       p(95)=6       
    ws_msgs_received............: 28517  1422.050043/s
    ws_msgs_sent................: 28517  1422.050043/s
    ws_session_duration.........: avg=41.57ms  min=3.09ms med=22.58ms max=328.41ms p(90)=98.36ms p(95)=122.65ms
    ws_sessions.................: 57684  2876.513473/s




running (20.1s), 000/120 VUs, 57684 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
