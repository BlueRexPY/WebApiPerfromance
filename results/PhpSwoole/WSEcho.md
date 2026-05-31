# PHP Swoole — WS Echo Benchmark

**Tested**: 2026-05-31 18:11:05 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8028/ws/echo`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,143.74\* |
| Avg Latency | 2.961654ms |
| Max Latency | 72ms |
| Total Requests | 63,035 |
| Transfer/sec | N/A |
| Port | 8028 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 2.961654 | 5 | 72 |
| Iteration Duration | 38.11ms | 111.85ms | — |
| Checks Passed | 52.70% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 49.2MiB |
| Memory Limit | 1GiB |
| Memory % | 4.80% |
| CPU % | 0.06% |
| PIDs | 33 |

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


running (01.0s), 120/120 VUs, 7836 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 15380 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 21228 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 26977 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 32685 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 35041 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 37064 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 38974 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 40990 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 42962 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 44919 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 46934 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 48946 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 50883 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 52892 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 54856 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 56870 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 58863 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 60875 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 62894 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=5


  █ TOTAL RESULTS 

    checks_total.......: 63035  3143.739043/s
    checks_succeeded...: 52.70% 33224 out of 63035
    checks_failed......: 47.29% 29811 out of 63035

    ✗ ws connected (101)
      ↳  52% — ✓ 33224 / ✗ 29811

    EXECUTION
    iteration_duration..........: avg=38.11ms  min=513.95µs med=23.96ms max=316.77ms p(90)=87.16ms p(95)=111.85ms
    iterations..................: 63035  3143.739043/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 8.3 MB 414 kB/s
    data_sent...................: 13 MB  665 kB/s

    WEBSOCKET
    ws_connecting...............: avg=36.39ms  min=234.97µs med=21.77ms max=316.68ms p(90)=87.03ms p(95)=111.72ms
    ws_echo_messages_received...: 33224  1656.977647/s
    ws_echo_messages_sent.......: 33224  1656.977647/s
    ws_echo_rtt_ms..............: avg=2.961654 min=0        med=1       max=72       p(90)=3       p(95)=5       
    ws_msgs_received............: 33224  1656.977647/s
    ws_msgs_sent................: 33224  1656.977647/s
    ws_session_duration.........: avg=38.05ms  min=493.34µs med=23.9ms  max=316.71ms p(90)=87.06ms p(95)=111.76ms
    ws_sessions.................: 63035  3143.739043/s




running (20.1s), 000/120 VUs, 63035 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
