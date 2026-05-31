# F# .NET AOT — WS Echo Benchmark

**Tested**: 2026-05-30 20:54:57 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8020/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,981.39 |
| Avg Latency | 9.058304ms |
| Max Latency | 77ms |
| Total Requests | 59,747 |
| Transfer/sec | N/A |
| Port | 8020 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 2.597882 | 5 | 33 |
| Iteration Duration | 36.87ms | 109.3ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 60.55MiB |
| Memory Limit | 1GiB |
| Memory % | 3.77% |
| CPU % | 0.01% |
| PIDs | 19 |

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


running (01.0s), 120/120 VUs, 13783 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 22090 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 29010 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 31173 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 33166 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 35093 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 37123 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 39293 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 41322 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 43445 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 45628 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 47828 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 50042 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 52217 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 54332 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 56411 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 58496 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 60623 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 62801 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 65020 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=5


  █ TOTAL RESULTS 

    checks_total.......: 65148  3248.732749/s
    checks_succeeded...: 43.92% 28616 out of 65148
    checks_failed......: 56.07% 36532 out of 65148

    ✗ ws connected (101)
      ↳  43% — ✓ 28616 / ✗ 36532

    EXECUTION
    iteration_duration..........: avg=36.87ms  min=1.15ms   med=22.2ms  max=342.27ms p(90)=86.59ms p(95)=109.3ms 
    iterations..................: 65148  3248.732749/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 6.1 MB 303 kB/s
    data_sent...................: 14 MB  676 kB/s

    WEBSOCKET
    ws_connecting...............: avg=35.59ms  min=742.74µs med=21.01ms max=342.17ms p(90)=86.47ms p(95)=109.2ms 
    ws_echo_messages_received...: 28616  1426.992944/s
    ws_echo_messages_sent.......: 28616  1426.992944/s
    ws_echo_rtt_ms..............: avg=2.597882 min=0        med=2       max=33       p(90)=4       p(95)=5       
    ws_msgs_received............: 28616  1426.992944/s
    ws_msgs_sent................: 28616  1426.992944/s
    ws_session_duration.........: avg=36.8ms   min=1.12ms   med=22.14ms max=342.2ms  p(90)=86.51ms p(95)=109.23ms
    ws_sessions.................: 65148  3248.732749/s




running (20.1s), 000/120 VUs, 65148 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
