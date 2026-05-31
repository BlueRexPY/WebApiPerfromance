# JS Bun Elysia Cluster — WS Echo Benchmark

**Tested**: 2026-05-30 23:26:05 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8087/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,196.05 |
| Avg Latency | 25.998938ms |
| Max Latency | 274ms |
| Total Requests | 44,024 |
| Transfer/sec | N/A |
| Port | 8087 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 3.219279 | 9 | 65 |
| Iteration Duration | 42.33ms | 124.7ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 151.5MiB |
| Memory Limit | 1GiB |
| Memory % | 13.20% |
| CPU % | 0.46% |
| PIDs | 80 |

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


running (01.0s), 120/120 VUs, 6547 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 15111 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 17444 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 19350 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 21314 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 25666 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 30615 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 32525 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 34468 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 39529 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 41159 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 42794 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 44379 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 46177 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 47874 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 49591 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 51231 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 53056 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 54827 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 56576 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=9


  █ TOTAL RESULTS 

    checks_total.......: 56719  2829.738905/s
    checks_succeeded...: 51.90% 29442 out of 56719
    checks_failed......: 48.09% 27277 out of 56719

    ✗ ws connected (101)
      ↳  51% — ✓ 29442 / ✗ 27277

    EXECUTION
    iteration_duration..........: avg=42.33ms  min=692.23µs med=26.64ms max=331.08ms p(90)=98.61ms p(95)=124.7ms 
    iterations..................: 56719  2829.738905/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 5.7 MB 286 kB/s
    data_sent...................: 12 MB  598 kB/s

    WEBSOCKET
    ws_connecting...............: avg=40.44ms  min=360.05µs med=24.63ms max=331.04ms p(90)=98.23ms p(95)=124.48ms
    ws_echo_messages_received...: 29442  1468.875912/s
    ws_echo_messages_sent.......: 29442  1468.875912/s
    ws_echo_rtt_ms..............: avg=3.219279 min=0        med=2       max=65       p(90)=6       p(95)=9       
    ws_msgs_received............: 29442  1468.875912/s
    ws_msgs_sent................: 29442  1468.875912/s
    ws_session_duration.........: avg=42.24ms  min=646.2µs  med=26.55ms max=331.04ms p(90)=98.5ms  p(95)=124.61ms
    ws_sessions.................: 56719  2829.738905/s




running (20.0s), 000/120 VUs, 56719 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
