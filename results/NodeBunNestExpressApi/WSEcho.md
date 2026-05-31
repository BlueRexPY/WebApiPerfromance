# JS Bun NestJS Express — WS Echo Benchmark

**Tested**: 2026-05-30 23:06:55 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8053/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,182.78 |
| Avg Latency | 32.350822ms |
| Max Latency | 76ms |
| Total Requests | 43,739 |
| Transfer/sec | N/A |
| Port | 8053 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 2.75523 | 6 | 35 |
| Iteration Duration | 38.99ms | 112.87ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 59.07MiB |
| Memory Limit | 1GiB |
| Memory % | 8.30% |
| CPU % | 0.27% |
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


running (01.0s), 120/120 VUs, 8579 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 15791 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 17677 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 19676 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 22491 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 29755 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 32577 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 34506 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 36687 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 40449 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 42499 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 44598 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 46525 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 50027 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 51894 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 53824 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 55287 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 57322 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 59384 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 61457 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=6


  █ TOTAL RESULTS 

    checks_total.......: 61593  3072.453821/s
    checks_succeeded...: 46.33% 28537 out of 61593
    checks_failed......: 53.66% 33056 out of 61593

    ✗ ws connected (101)
      ↳  46% — ✓ 28537 / ✗ 33056

    EXECUTION
    iteration_duration..........: avg=38.99ms min=3.16ms med=23.58ms max=340.36ms p(90)=90.16ms p(95)=112.87ms
    iterations..................: 61593  3072.453821/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 5.6 MB 278 kB/s
    data_sent...................: 13 MB  642 kB/s

    WEBSOCKET
    ws_connecting...............: avg=37.57ms min=1.78ms med=21.81ms max=340.3ms  p(90)=90.04ms p(95)=112.78ms
    ws_echo_messages_received...: 28537  1423.515898/s
    ws_echo_messages_sent.......: 28537  1423.515898/s
    ws_echo_rtt_ms..............: avg=2.75523 min=0      med=2       max=35       p(90)=5       p(95)=6       
    ws_msgs_received............: 28537  1423.515898/s
    ws_msgs_sent................: 28537  1423.515898/s
    ws_session_duration.........: avg=38.93ms min=3.13ms med=23.5ms  max=340.31ms p(90)=90.09ms p(95)=112.82ms
    ws_sessions.................: 61593  3072.453821/s




running (20.0s), 000/120 VUs, 61593 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
