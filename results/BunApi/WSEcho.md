# JS Bun — WS Echo Benchmark

**Tested**: 2026-05-30 21:11:45 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8002/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,225.87 |
| Avg Latency | 1.883002ms |
| Max Latency | 21ms |
| Total Requests | 64,640 |
| Transfer/sec | N/A |
| Port | 8002 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 1.883002 | 4 | 21 |
| Iteration Duration | 37.15ms | 111.17ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 17.66MiB |
| Memory Limit | 1GiB |
| Memory % | 1.73% |
| CPU % | 0.18% |
| PIDs | 15 |

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


running (01.0s), 120/120 VUs, 14152 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 16781 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 19015 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 21197 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 26881 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 32943 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 34915 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 37035 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 41869 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 44283 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 46460 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 48477 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 50567 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 52754 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 54575 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 56244 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 58163 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 60293 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 62303 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 64505 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=4


  █ TOTAL RESULTS 

    checks_total.......: 64640  3225.870368/s
    checks_succeeded...: 44.44% 28727 out of 64640
    checks_failed......: 55.55% 35913 out of 64640

    ✗ ws connected (101)
      ↳  44% — ✓ 28727 / ✗ 35913

    EXECUTION
    iteration_duration..........: avg=37.15ms  min=1.85ms med=21.95ms max=377.48ms p(90)=88.39ms p(95)=111.17ms
    iterations..................: 64640  3225.870368/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 5.6 MB 280 kB/s
    data_sent...................: 14 MB  672 kB/s

    WEBSOCKET
    ws_connecting...............: avg=36.17ms  min=1.15ms med=21.13ms max=377.41ms p(90)=88.21ms p(95)=111.01ms
    ws_echo_messages_received...: 28727  1433.625898/s
    ws_echo_messages_sent.......: 28727  1433.625898/s
    ws_echo_rtt_ms..............: avg=1.883002 min=0      med=2       max=21       p(90)=4       p(95)=4       
    ws_msgs_received............: 28727  1433.625898/s
    ws_msgs_sent................: 28727  1433.625898/s
    ws_session_duration.........: avg=37.08ms  min=1.78ms med=21.88ms max=377.42ms p(90)=88.28ms p(95)=111.07ms
    ws_sessions.................: 64640  3225.870368/s




running (20.0s), 000/120 VUs, 64640 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
