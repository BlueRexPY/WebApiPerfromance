# JS Bun NestJS Fastify Cluster — WS Echo Benchmark

**Tested**: 2026-05-30 23:21:51 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8060/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,223.30 |
| Avg Latency | 33.888728ms |
| Max Latency | 132ms |
| Total Requests | 44,564 |
| Transfer/sec | N/A |
| Port | 8060 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 2.079582 | 5 | 46 |
| Iteration Duration | 39ms | 115.39ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 142.1MiB |
| Memory Limit | 1GiB |
| Memory % | 12.10% |
| CPU % | 0.63% |
| PIDs | 27 |

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


running (01.0s), 120/120 VUs, 7542 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 16793 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 19411 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 21088 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 22920 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 27693 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 34741 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 36589 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 38539 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 42069 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 44023 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 46012 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 47960 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 49857 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 51847 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 53811 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 55789 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 57744 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 59581 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 61456 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=5


  █ TOTAL RESULTS 

    checks_total.......: 61594  3070.994881/s
    checks_succeeded...: 47.96% 29542 out of 61594
    checks_failed......: 52.03% 32052 out of 61594

    ✗ ws connected (101)
      ↳  47% — ✓ 29542 / ✗ 32052

    EXECUTION
    iteration_duration..........: avg=39ms     min=389.82µs med=24.41ms max=303.16ms p(90)=92.63ms p(95)=115.39ms
    iterations..................: 61594  3070.994881/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 5.8 MB 287 kB/s
    data_sent...................: 13 MB  644 kB/s

    WEBSOCKET
    ws_connecting...............: avg=37.86ms  min=251.97µs med=22.95ms max=303.09ms p(90)=92.55ms p(95)=115.22ms
    ws_echo_messages_received...: 29542  1472.92481/s
    ws_echo_messages_sent.......: 29542  1472.92481/s
    ws_echo_rtt_ms..............: avg=2.079582 min=0        med=2       max=46       p(90)=4       p(95)=5       
    ws_msgs_received............: 29542  1472.92481/s
    ws_msgs_sent................: 29542  1472.92481/s
    ws_session_duration.........: avg=38.94ms  min=358.45µs med=24.33ms max=303.09ms p(90)=92.57ms p(95)=115.26ms
    ws_sessions.................: 61594  3070.994881/s




running (20.1s), 000/120 VUs, 61594 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
