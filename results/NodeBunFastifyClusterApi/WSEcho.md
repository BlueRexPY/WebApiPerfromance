# JS Bun Fastify Cluster — WS Echo Benchmark

**Tested**: 2026-05-30 23:13:24 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8056/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,179.15 |
| Avg Latency | 1.840888ms |
| Max Latency | 49ms |
| Total Requests | 63,729 |
| Transfer/sec | N/A |
| Port | 8056 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 1.840888 | 4 | 49 |
| Iteration Duration | 37.68ms | 111.45ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 168.7MiB |
| Memory Limit | 1GiB |
| Memory % | 16.47% |
| CPU % | 0.75% |
| PIDs | 47 |

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


running (01.0s), 120/120 VUs, 8075 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 12612 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 14679 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 16708 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 23202 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 29819 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 31872 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 33906 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 37891 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 43755 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 45798 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 47782 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 49837 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 51868 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 53846 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 55818 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 57785 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 59599 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 61573 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 63596 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=4


  █ TOTAL RESULTS 

    checks_total.......: 63729  3179.151476/s
    checks_succeeded...: 46.14% 29407 out of 63729
    checks_failed......: 53.85% 34322 out of 63729

    ✗ ws connected (101)
      ↳  46% — ✓ 29407 / ✗ 34322

    EXECUTION
    iteration_duration..........: avg=37.68ms  min=373.45µs med=23.63ms max=303.47ms p(90)=89.1ms  p(95)=111.45ms
    iterations..................: 63729  3179.151476/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 5.7 MB 286 kB/s
    data_sent...................: 13 MB  664 kB/s

    WEBSOCKET
    ws_connecting...............: avg=36.69ms  min=179.07µs med=22.38ms max=303.42ms p(90)=89.02ms p(95)=111.34ms
    ws_echo_messages_received...: 29407  1466.982182/s
    ws_echo_messages_sent.......: 29407  1466.982182/s
    ws_echo_rtt_ms..............: avg=1.840888 min=0        med=1       max=49       p(90)=3       p(95)=4       
    ws_msgs_received............: 29407  1466.982182/s
    ws_msgs_sent................: 29407  1466.982182/s
    ws_session_duration.........: avg=37.62ms  min=354.33µs med=23.56ms max=303.42ms p(90)=89.05ms p(95)=111.39ms
    ws_sessions.................: 63729  3179.151476/s




running (20.0s), 000/120 VUs, 63729 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
