# JS Node NestJS Fastify — WS Echo Benchmark

**Tested**: 2026-05-30 22:43:49 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8030/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,382.30 |
| Avg Latency | 0.763961ms |
| Max Latency | 50ms |
| Total Requests | 47,765 |
| Transfer/sec | N/A |
| Port | 8030 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0.763961 | 2 | 50 |
| Iteration Duration | 50.29ms | 120.79ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 30.57MiB |
| Memory Limit | 1GiB |
| Memory % | 2.99% |
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


running (00.9s), 120/120 VUs, 2033 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  00.9s/20s

running (01.9s), 120/120 VUs, 6133 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  01.9s/20s

running (02.9s), 120/120 VUs, 10204 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  02.9s/20s

running (03.9s), 120/120 VUs, 14100 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  03.9s/20s

running (04.9s), 120/120 VUs, 18051 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  04.9s/20s

running (05.9s), 120/120 VUs, 20049 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  05.9s/20s

running (06.9s), 120/120 VUs, 21748 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  06.9s/20s

running (07.9s), 120/120 VUs, 23681 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  07.9s/20s

running (08.9s), 120/120 VUs, 25649 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  08.9s/20s

running (09.9s), 120/120 VUs, 27470 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  09.9s/20s

running (10.9s), 120/120 VUs, 29404 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  10.9s/20s

running (11.9s), 120/120 VUs, 31414 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  11.9s/20s

running (12.9s), 120/120 VUs, 33227 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  12.9s/20s

running (13.9s), 120/120 VUs, 35223 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  13.9s/20s

running (14.9s), 120/120 VUs, 37259 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  14.9s/20s

running (15.9s), 120/120 VUs, 39328 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  15.9s/20s

running (16.9s), 120/120 VUs, 41318 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  16.9s/20s

running (17.9s), 120/120 VUs, 43318 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  17.9s/20s

running (18.9s), 120/120 VUs, 45553 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  18.9s/20s

running (19.9s), 120/120 VUs, 47539 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  19.9s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=2


  █ TOTAL RESULTS 

    checks_total.......: 47765  2382.299695/s
    checks_succeeded...: 40.67% 19429 out of 47765
    checks_failed......: 59.32% 28336 out of 47765

    ✗ ws connected (101)
      ↳  40% — ✓ 19429 / ✗ 28336

    EXECUTION
    iteration_duration..........: avg=50.29ms  min=11.05ms med=36.93ms max=362.89ms p(90)=97.09ms p(95)=120.79ms
    iterations..................: 47765  2382.299695/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 3.1 MB 153 kB/s
    data_sent...................: 9.9 MB 492 kB/s

    WEBSOCKET
    ws_connecting...............: avg=49.86ms  min=10.99ms med=36.37ms max=362.77ms p(90)=96.8ms  p(95)=120.63ms
    ws_echo_messages_received...: 19429  969.02964/s
    ws_echo_messages_sent.......: 19429  969.02964/s
    ws_echo_rtt_ms..............: avg=0.763961 min=0       med=0       max=50       p(90)=1       p(95)=2       
    ws_msgs_received............: 19429  969.02964/s
    ws_msgs_sent................: 19429  969.02964/s
    ws_session_duration.........: avg=50.23ms  min=11.01ms med=36.88ms max=362.8ms  p(90)=97.02ms p(95)=120.69ms
    ws_sessions.................: 47765  2382.299695/s




running (20.0s), 000/120 VUs, 47765 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
