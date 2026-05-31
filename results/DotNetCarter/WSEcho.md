# C# Carter — WS Echo Benchmark

**Tested**: 2026-05-30 20:57:08 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8035/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,467.31 |
| Avg Latency | 21.309035ms |
| Max Latency | 218ms |
| Total Requests | 49,456 |
| Transfer/sec | N/A |
| Port | 8035 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 4.845277 | 11 | 51 |
| Iteration Duration | 37.98ms | 104.79ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 84.09MiB |
| Memory Limit | 1GiB |
| Memory % | 4.56% |
| CPU % | 0.06% |
| PIDs | 20 |

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


running (01.0s), 120/120 VUs, 6050 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 14469 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 18330 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 20470 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 22647 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 30190 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 35223 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 37347 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 39511 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 41391 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 43530 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 45708 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 47845 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 50019 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 52197 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 54353 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 56551 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 58747 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 60950 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 63112 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=11


  █ TOTAL RESULTS 

    checks_total.......: 63245  3154.321873/s
    checks_succeeded...: 45.05% 28496 out of 63245
    checks_failed......: 54.94% 34749 out of 63245

    ✗ ws connected (101)
      ↳  45% — ✓ 28496 / ✗ 34749

    EXECUTION
    iteration_duration..........: avg=37.98ms  min=2.36ms   med=23.8ms  max=325.66ms p(90)=84.13ms p(95)=104.79ms
    iterations..................: 63245  3154.321873/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 6.0 MB 301 kB/s
    data_sent...................: 13 MB  658 kB/s

    WEBSOCKET
    ws_connecting...............: avg=35.65ms  min=867.08µs med=21.15ms max=325.6ms  p(90)=83.99ms p(95)=104.68ms
    ws_echo_messages_received...: 28496  1421.227861/s
    ws_echo_messages_sent.......: 28496  1421.227861/s
    ws_echo_rtt_ms..............: avg=4.845277 min=0        med=4       max=51       p(90)=9       p(95)=11      
    ws_msgs_received............: 28496  1421.227861/s
    ws_msgs_sent................: 28496  1421.227861/s
    ws_session_duration.........: avg=37.91ms  min=2.33ms   med=23.73ms max=325.61ms p(90)=84.05ms p(95)=104.71ms
    ws_sessions.................: 63245  3154.321873/s




running (20.1s), 000/120 VUs, 63245 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
