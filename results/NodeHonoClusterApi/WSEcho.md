# JS Node Hono Cluster — WS Echo Benchmark

**Tested**: 2026-05-30 22:51:21 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8043/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,628.17 |
| Avg Latency | 1.475734ms |
| Max Latency | 61ms |
| Total Requests | 52,705 |
| Transfer/sec | N/A |
| Port | 8043 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 1.475734 | 5 | 61 |
| Iteration Duration | 45.57ms | 105.68ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 93.27MiB |
| Memory Limit | 1GiB |
| Memory % | 9.11% |
| CPU % | 0.00% |
| PIDs | 21 |

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


running (01.0s), 120/120 VUs, 2037 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4502 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 6885 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 8870 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 10875 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 14709 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 18260 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 20563 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 22486 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 26282 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 30523 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 33000 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 35091 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 38698 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 41258 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 44212 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 46193 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 48550 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 50580 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 52566 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=5


  █ TOTAL RESULTS 

    checks_total.......: 52705  2628.171616/s
    checks_succeeded...: 53.87% 28394 out of 52705
    checks_failed......: 46.12% 24311 out of 52705

    ✗ ws connected (101)
      ↳  53% — ✓ 28394 / ✗ 24311

    EXECUTION
    iteration_duration..........: avg=45.57ms  min=3.19ms med=38.25ms max=276.96ms p(90)=84.51ms p(95)=105.68ms
    iterations..................: 52705  2628.171616/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 4.5 MB 224 kB/s
    data_sent...................: 11 MB  557 kB/s

    WEBSOCKET
    ws_connecting...............: avg=44.64ms  min=2.41ms med=36.61ms max=276.92ms p(90)=83.82ms p(95)=105.6ms 
    ws_echo_messages_received...: 28394  1415.88663/s
    ws_echo_messages_sent.......: 28394  1415.88663/s
    ws_echo_rtt_ms..............: avg=1.475734 min=0      med=1       max=61       p(90)=3       p(95)=5       
    ws_msgs_received............: 28394  1415.88663/s
    ws_msgs_sent................: 28394  1415.88663/s
    ws_session_duration.........: avg=45.51ms  min=3.15ms med=38.17ms max=276.93ms p(90)=84.44ms p(95)=105.62ms
    ws_sessions.................: 52705  2628.171616/s




running (20.1s), 000/120 VUs, 52705 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
