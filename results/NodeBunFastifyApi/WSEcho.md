# JS Bun Fastify — WS Echo Benchmark

**Tested**: 2026-05-30 23:02:28 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8050/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,202.36 |
| Avg Latency | 30.45977ms |
| Max Latency | 330ms |
| Total Requests | 44,186 |
| Transfer/sec | N/A |
| Port | 8050 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 3.151311 | 7 | 50 |
| Iteration Duration | 58.47ms | 130.16ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 64.65MiB |
| Memory Limit | 1GiB |
| Memory % | 3.95% |
| CPU % | 0.30% |
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


running (01.0s), 120/120 VUs, 3754 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 5756 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 7864 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 9794 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (04.7s), 120/120 VUs, 10965 complete and 0 interrupted iterations
default   [  23% ] 120 VUs  04.7s/20s

running (04.8s), 120/120 VUs, 11174 complete and 0 interrupted iterations
default   [  24% ] 120 VUs  04.8s/20s

running (05.0s), 120/120 VUs, 11572 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 13517 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 15500 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 17562 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 19239 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (09.0s), 120/120 VUs, 19239 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 21018 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 22870 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 24708 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 26584 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 28581 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 30606 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 32558 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 34655 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 36741 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 38852 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 40953 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=7


  █ TOTAL RESULTS 

    checks_total.......: 41078  2049.079502/s
    checks_succeeded...: 6.12%  2518 out of 41078
    checks_failed......: 93.87% 38560 out of 41078

    ✗ ws connected (101)
      ↳  6% — ✓ 2518 / ✗ 38560

    EXECUTION
    iteration_duration..........: avg=58.47ms  min=4.48ms med=52.04ms max=362.99ms p(90)=108.27ms p(95)=130.16ms
    iterations..................: 41078  2049.079502/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 491 kB 25 kB/s
    data_sent...................: 7.9 MB 395 kB/s

    WEBSOCKET
    ws_connecting...............: avg=58.16ms  min=3.03ms med=51.91ms max=362.88ms p(90)=108.11ms p(95)=130.09ms
    ws_echo_messages_received...: 2518   125.604513/s
    ws_echo_messages_sent.......: 2518   125.604513/s
    ws_echo_rtt_ms..............: avg=3.151311 min=0      med=3       max=50       p(90)=6        p(95)=7       
    ws_msgs_received............: 2518   125.604513/s
    ws_msgs_sent................: 2518   125.604513/s
    ws_session_duration.........: avg=58.39ms  min=4.45ms med=51.96ms max=362.91ms p(90)=108.17ms p(95)=130.1ms 
    ws_sessions.................: 41078  2049.079502/s




running (20.0s), 000/120 VUs, 41078 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
