# JS Node Express — WS Echo Benchmark

**Tested**: 2026-05-30 22:20:35 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8014/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,606.95 |
| Avg Latency | 2.550537ms |
| Max Latency | 84ms |
| Total Requests | 32,213 |
| Transfer/sec | N/A |
| Port | 8014 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0 | 0 | 0 |
| Iteration Duration |  |  | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 37.78MiB |
| Memory Limit | 1GiB |
| Memory % | 1.94% |
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


running (00.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  00.9s/20s

running (01.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  01.9s/20s

running (02.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  02.9s/20s

running (03.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  03.9s/20s

running (04.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  04.9s/20s

running (05.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  05.9s/20s

running (06.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  06.9s/20s

running (07.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  07.9s/20s

running (08.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  08.9s/20s

running (09.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  09.9s/20s

running (10.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  10.9s/20s

running (11.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  11.9s/20s

running (12.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  12.9s/20s

running (13.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  13.9s/20s

running (14.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  14.9s/20s

running (15.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  15.9s/20s

running (16.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  16.9s/20s

running (17.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  17.9s/20s

running (18.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  18.9s/20s

running (19.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  19.9s/20s

running (20.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (21.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (22.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (23.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (24.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (25.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (26.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (27.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (28.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (29.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (30.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (31.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (32.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (33.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (34.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (35.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (36.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (37.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (38.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (39.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (40.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (41.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (42.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (43.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (44.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (45.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (46.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (47.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (48.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s

running (49.9s), 120/120 VUs, 0 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=0


  █ TOTAL RESULTS 

    EXECUTION
    vus.....................: 120   min=120    max=120
    vus_max.................: 120   min=120    max=120

    NETWORK
    data_received...........: 19 kB 379 B/s
    data_sent...............: 28 kB 554 B/s

    WEBSOCKET
    ws_connecting...........: avg=65.43ms min=8.58ms med=70.74ms max=104.4ms p(90)=88.49ms p(95)=101.63ms
    ws_echo_messages_sent...: 120   2.399757/s
    ws_echo_rtt_ms..........: avg=0       min=0      med=0       max=0       p(90)=0       p(95)=0       
    ws_msgs_received........: 120   2.399757/s
    ws_msgs_sent............: 120   2.399757/s
    ws_sessions.............: 120   2.399757/s




running (50.0s), 000/120 VUs, 0 complete and 120 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s

time="2026-05-31T00:20:33+02:00" level=warning msg="No script iterations fully finished, consider making the test duration longer"
```
