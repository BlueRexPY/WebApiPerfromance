# JS Bun Koa Cluster — WS Echo Benchmark

**Tested**: 2026-05-30 23:17:33 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8058/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,335.13 |
| Avg Latency | 25.821093ms |
| Max Latency | 288ms |
| Total Requests | 46,794 |
| Transfer/sec | N/A |
| Port | 8058 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 1.822884 | 4 | 52 |
| Iteration Duration | 38.07ms | 112.91ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 121.1MiB |
| Memory Limit | 1GiB |
| Memory % | 7.96% |
| CPU % | 0.61% |
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


running (01.0s), 120/120 VUs, 1983 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 9108 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 11232 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 13337 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 15497 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 26257 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 29486 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 31329 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 33356 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 39036 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 45745 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 47739 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 49635 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 51648 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 53679 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 55709 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 57760 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 59769 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 61744 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 63029 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=4


  █ TOTAL RESULTS 

    checks_total.......: 63149  3145.753039/s
    checks_succeeded...: 46.47% 29348 out of 63149
    checks_failed......: 53.52% 33801 out of 63149

    ✗ ws connected (101)
      ↳  46% — ✓ 29348 / ✗ 33801

    EXECUTION
    iteration_duration..........: avg=38.07ms  min=450.57µs med=23.42ms max=353.45ms p(90)=90.53ms p(95)=112.91ms
    iterations..................: 63149  3145.753039/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 5.7 MB 285 kB/s
    data_sent...................: 13 MB  658 kB/s

    WEBSOCKET
    ws_connecting...............: avg=37.08ms  min=196.85µs med=22.36ms max=353.37ms p(90)=90.43ms p(95)=112.79ms
    ws_echo_messages_received...: 29348  1461.96393/s
    ws_echo_messages_sent.......: 29348  1461.96393/s
    ws_echo_rtt_ms..............: avg=1.822884 min=0        med=1       max=52       p(90)=3       p(95)=4       
    ws_msgs_received............: 29348  1461.96393/s
    ws_msgs_sent................: 29348  1461.96393/s
    ws_session_duration.........: avg=38.01ms  min=419.56µs med=23.33ms max=353.39ms p(90)=90.45ms p(95)=112.85ms
    ws_sessions.................: 63149  3145.753039/s




running (20.1s), 000/120 VUs, 63149 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
