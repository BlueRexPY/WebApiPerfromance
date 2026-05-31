# JS Node Fastify — WS Echo Benchmark

**Tested**: 2026-05-30 22:13:54 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8003/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,178.77 |
| Avg Latency | 12.674553ms |
| Max Latency | 205ms |
| Total Requests | 23,755 |
| Transfer/sec | N/A |
| Port | 8003 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0 | 0 | 0 |
| Iteration Duration |  |  | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 40.14MiB |
| Memory Limit | 1GiB |
| Memory % | 2.01% |
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

    EXECUTION
    vus.....................: 120   min=120    max=120
    vus_max.................: 120   min=120    max=120

    NETWORK
    data_received...........: 19 kB 379 B/s
    data_sent...............: 28 kB 554 B/s

    WEBSOCKET
    ws_connecting...........: avg=45.33ms min=14.6ms med=45.42ms max=69.29ms p(90)=56.74ms p(95)=68.23ms
    ws_echo_messages_sent...: 120   2.399955/s
    ws_echo_rtt_ms..........: avg=0       min=0      med=0       max=0       p(90)=0       p(95)=0      
    ws_msgs_received........: 120   2.399955/s
    ws_msgs_sent............: 120   2.399955/s
    ws_sessions.............: 120   2.399955/s




running (50.0s), 000/120 VUs, 0 complete and 120 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s

time="2026-05-31T00:13:52+02:00" level=warning msg="No script iterations fully finished, consider making the test duration longer"
```
