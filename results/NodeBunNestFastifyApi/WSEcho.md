# JS Bun NestJS Fastify — WS Echo Benchmark

**Tested**: 2026-05-30 23:09:04 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8054/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,092.72 |
| Avg Latency | 3.2932ms |
| Max Latency | 42ms |
| Total Requests | 62,000 |
| Transfer/sec | N/A |
| Port | 8054 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 3.2932 | 7 | 42 |
| Iteration Duration | 38.74ms | 110.92ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 47.41MiB |
| Memory Limit | 1GiB |
| Memory % | 4.63% |
| CPU % | 0.20% |
| PIDs | 9 |

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


running (01.0s), 120/120 VUs, 7205 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 9746 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 17768 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 20391 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 22499 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 24468 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 30006 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 34575 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 36674 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 38769 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 43755 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 45657 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 47350 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 49406 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 51472 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 53513 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 55584 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 57691 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 59779 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 61860 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=7


  █ TOTAL RESULTS 

    checks_total.......: 62000  3092.718817/s
    checks_succeeded...: 46.10% 28588 out of 62000
    checks_failed......: 53.89% 33412 out of 62000

    ✗ ws connected (101)
      ↳  46% — ✓ 28588 / ✗ 33412

    EXECUTION
    iteration_duration..........: avg=38.74ms min=3.32ms med=22.24ms max=318.66ms p(90)=88.6ms  p(95)=110.92ms
    iterations..................: 62000  3092.718817/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 5.6 MB 278 kB/s
    data_sent...................: 13 MB  646 kB/s

    WEBSOCKET
    ws_connecting...............: avg=37.07ms min=2.19ms med=20.33ms max=318.59ms p(90)=88.48ms p(95)=110.82ms
    ws_echo_messages_received...: 28588  1426.04267/s
    ws_echo_messages_sent.......: 28588  1426.04267/s
    ws_echo_rtt_ms..............: avg=3.2932  min=0      med=3       max=42       p(90)=6       p(95)=7       
    ws_msgs_received............: 28588  1426.04267/s
    ws_msgs_sent................: 28588  1426.04267/s
    ws_session_duration.........: avg=38.67ms min=3.3ms  med=22.18ms max=318.62ms p(90)=88.53ms p(95)=110.86ms
    ws_sessions.................: 62000  3092.718817/s




running (20.0s), 000/120 VUs, 62000 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
