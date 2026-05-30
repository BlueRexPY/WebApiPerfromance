# JS Node Hono — WS Echo Benchmark

**Tested**: 2026-05-30 22:37:17 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8039/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 32.98 |
| Avg Latency | 0ms |
| Max Latency | 0ms |
| Total Requests | 1,649 |
| Transfer/sec | N/A |
| Port | 8039 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0 | 0 | 0 |
| Iteration Duration | 10.95ms | 19ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 19.46MiB |
| Memory Limit | 1GiB |
| Memory % | 1.90% |
| CPU % | 0.00% |
| PIDs | 7 |

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


running (01.0s), 120/120 VUs, 87 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 177 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 256 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 352 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 445 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 543 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 638 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 727 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 833 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 918 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 995 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 1087 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 1173 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 1275 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 1378 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 1462 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 1536 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 1637 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s

running (21.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (22.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (23.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (24.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (25.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (26.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (27.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (28.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (29.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (30.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (31.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (32.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (33.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (34.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (35.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (36.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (37.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (38.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (39.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (40.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (41.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (42.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (43.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (44.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (45.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (46.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (47.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (48.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (49.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (50.0s), 120/120 VUs, 1649 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=0


  █ TOTAL RESULTS 

    checks_total.......: 1649    32.979039/s
    checks_succeeded...: 0.00%   0 out of 1649
    checks_failed......: 100.00% 1649 out of 1649

    ✗ ws connected (101)
      ↳  0% — ✓ 0 / ✗ 1649

    EXECUTION
    iteration_duration......: avg=10.95ms min=6.35ms med=9.72ms max=78.69ms p(90)=16.34ms p(95)=19ms   
    iterations..............: 1649   32.979039/s
    vus.....................: 120    min=120     max=120
    vus_max.................: 120    min=120     max=120

    NETWORK
    data_received...........: 19 kB  379 B/s
    data_sent...............: 341 kB 6.8 kB/s

    WEBSOCKET
    ws_connecting...........: avg=14.66ms min=5ms    med=9.81ms max=97.7ms  p(90)=19.58ms p(95)=61.04ms
    ws_echo_messages_sent...: 120    2.39993/s
    ws_echo_rtt_ms..........: avg=0       min=0      med=0      max=0       p(90)=0       p(95)=0      
    ws_msgs_received........: 120    2.39993/s
    ws_msgs_sent............: 120    2.39993/s
    ws_session_duration.....: avg=10.88ms min=6.29ms med=9.66ms max=78.59ms p(90)=16.27ms p(95)=18.92ms
    ws_sessions.............: 1769   35.378969/s




running (50.0s), 000/120 VUs, 1649 complete and 120 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
