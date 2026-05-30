# JS Bun AdonisJS Cluster — WS Echo Benchmark

**Tested**: 2026-05-30 23:52:18 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8092/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 0.36 |
| Avg Latency | 0ms |
| Max Latency | 0ms |
| Total Requests | 18 |
| Transfer/sec | N/A |
| Port | 8092 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0 | 0 | 0 |
| Iteration Duration | 49.99s | 50s | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 176.4MiB |
| Memory Limit | 1GiB |
| Memory % | 17.22% |
| CPU % | 0.50% |
| PIDs | 69 |

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


running (01.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s

running (21.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (22.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (23.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (24.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (25.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (26.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (27.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (28.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (29.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (30.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (31.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (32.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (33.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (34.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (35.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (36.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (37.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (38.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (39.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (40.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (41.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (42.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (43.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (44.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (45.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (46.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (47.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (48.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (49.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (50.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=0


  █ TOTAL RESULTS 

    checks_total.......: 18      0.359991/s
    checks_succeeded...: 0.00%   0 out of 18
    checks_failed......: 100.00% 18 out of 18

    ✗ ws connected (101)
      ↳  0% — ✓ 0 / ✗ 18

    EXECUTION
    iteration_duration....: avg=49.99s min=49.99s med=49.99s max=50s p(90)=50s p(95)=50s
    iterations............: 18    0.359991/s
    vus...................: 120   min=120    max=120
    vus_max...............: 120   min=120    max=120

    NETWORK
    data_received.........: 0 B   0 B/s
    data_sent.............: 23 kB 456 B/s

    WEBSOCKET
    ws_connecting.........: avg=49.99s min=49.99s med=49.99s max=50s p(90)=50s p(95)=50s
    ws_echo_rtt_ms........: avg=0      min=0      med=0      max=0   p(90)=0   p(95)=0  
    ws_session_duration...: avg=49.99s min=49.99s med=49.99s max=50s p(90)=50s p(95)=50s
    ws_sessions...........: 22    0.439989/s




running (50.0s), 000/120 VUs, 10 complete and 110 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
