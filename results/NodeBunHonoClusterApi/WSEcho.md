# JS Bun Hono Cluster — WS Echo Benchmark

**Tested**: 2026-05-30 23:15:27 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8057/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,172.46 |
| Avg Latency | 1.226711ms |
| Max Latency | 36ms |
| Total Requests | 63,606 |
| Transfer/sec | N/A |
| Port | 8057 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 1.226711 | 3 | 36 |
| Iteration Duration | 37.76ms | 116.03ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 53.13MiB |
| Memory Limit | 1GiB |
| Memory % | 5.19% |
| CPU % | 0.50% |
| PIDs | 53 |

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


running (01.0s), 120/120 VUs, 5158 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 7115 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 9187 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 11266 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 23435 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 25342 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 27384 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 29235 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 33609 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 40911 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 43094 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 44949 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 48677 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 51448 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 53354 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 55319 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 57375 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 59403 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 61426 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 63479 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=3


  █ TOTAL RESULTS 

    checks_total.......: 63606  3172.457435/s
    checks_succeeded...: 47.44% 30175 out of 63606
    checks_failed......: 52.55% 33431 out of 63606

    ✗ ws connected (101)
      ↳  47% — ✓ 30175 / ✗ 33431

    EXECUTION
    iteration_duration..........: avg=37.76ms  min=290.89µs med=23.16ms max=377.56ms p(90)=91.79ms p(95)=116.03ms
    iterations..................: 63606  3172.457435/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 5.9 MB 294 kB/s
    data_sent...................: 13 MB  665 kB/s

    WEBSOCKET
    ws_connecting...............: avg=37.03ms  min=141.55µs med=22.35ms max=377.5ms  p(90)=91.69ms p(95)=115.88ms
    ws_echo_messages_received...: 30175  1505.029448/s
    ws_echo_messages_sent.......: 30175  1505.029448/s
    ws_echo_rtt_ms..............: avg=1.226711 min=0        med=1       max=36       p(90)=3       p(95)=3       
    ws_msgs_received............: 30175  1505.029448/s
    ws_msgs_sent................: 30175  1505.029448/s
    ws_session_duration.........: avg=37.69ms  min=266.34µs med=23.09ms max=377.52ms p(90)=91.73ms p(95)=115.96ms
    ws_sessions.................: 63606  3172.457435/s




running (20.0s), 000/120 VUs, 63606 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
