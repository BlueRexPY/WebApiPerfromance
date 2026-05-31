# Go Echo — WS Echo Benchmark

**Tested**: 2026-05-31 16:20:23 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8096/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,433.52 |
| Avg Latency | 2.532008ms |
| Max Latency | 36ms |
| Total Requests | 48,749 |
| Transfer/sec | N/A |
| Port | 8096 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 2.532008 | 7 | 36 |
| Iteration Duration | 49.25ms | 116.26ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 15.39MiB |
| Memory Limit | 1GiB |
| Memory % | 1.50% |
| CPU % | 0.00% |
| PIDs | 36 |

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


running (01.0s), 120/120 VUs, 6263 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 8830 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 11149 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 13480 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 15835 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 18156 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 20438 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 22597 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 24898 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 27209 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 29183 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 30979 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 32690 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 34957 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 37199 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 39487 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 41777 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 44041 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 46301 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 48620 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=7


  █ TOTAL RESULTS 

    checks_total.......: 48749  2433.518835/s
    checks_succeeded...: 13.61% 6639 out of 48749
    checks_failed......: 86.38% 42110 out of 48749

    ✗ ws connected (101)
      ↳  13% — ✓ 6639 / ✗ 42110

    EXECUTION
    iteration_duration..........: avg=49.25ms  min=2.38ms med=41.78ms max=333.04ms p(90)=96.11ms p(95)=116.26ms
    iterations..................: 48749  2433.518835/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 1.0 MB 52 kB/s
    data_sent...................: 9.5 MB 476 kB/s

    WEBSOCKET
    ws_connecting...............: avg=48.8ms   min=1.75ms med=41.26ms max=332.95ms p(90)=95.99ms p(95)=116.14ms
    ws_echo_messages_received...: 6639   331.414625/s
    ws_echo_messages_sent.......: 6639   331.414625/s
    ws_echo_rtt_ms..............: avg=2.532008 min=0      med=1       max=36       p(90)=4       p(95)=7       
    ws_msgs_received............: 6639   331.414625/s
    ws_msgs_sent................: 6639   331.414625/s
    ws_session_duration.........: avg=49.19ms  min=2.29ms med=41.72ms max=332.98ms p(90)=96.03ms p(95)=116.16ms
    ws_sessions.................: 48749  2433.518835/s




running (20.0s), 000/120 VUs, 48749 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
