# C# .NET AOT — WS Echo Benchmark

**Tested**: 2026-05-30 20:50:34 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8013/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,049.43 |
| Avg Latency | 8.043334ms |
| Max Latency | 63ms |
| Total Requests | 61,136 |
| Transfer/sec | N/A |
| Port | 8013 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 2.433218 | 5 | 35 |
| Iteration Duration | 35.01ms | 99.85ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 60.82MiB |
| Memory Limit | 1GiB |
| Memory % | 4.14% |
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


running (01.0s), 120/120 VUs, 14836 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 23725 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 29589 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 31905 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 34000 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 36194 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 38507 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 40805 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 43118 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 45431 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 47687 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 50008 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 52321 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 54645 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 56934 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 59203 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 61550 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 63819 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 66140 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 68451 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=5


  █ TOTAL RESULTS 

    checks_total.......: 68576  3421.38742/s
    checks_succeeded...: 41.78% 28653 out of 68576
    checks_failed......: 58.21% 39923 out of 68576

    ✗ ws connected (101)
      ↳  41% — ✓ 28653 / ✗ 39923

    EXECUTION
    iteration_duration..........: avg=35.01ms  min=1.77ms   med=21.8ms  max=274.46ms p(90)=80.31ms p(95)=99.85ms
    iterations..................: 68576  3421.38742/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 6.1 MB 303 kB/s
    data_sent...................: 14 MB  709 kB/s

    WEBSOCKET
    ws_connecting...............: avg=33.87ms  min=512.27µs med=20.8ms  max=274.39ms p(90)=80.21ms p(95)=99.72ms
    ws_echo_messages_received...: 28653  1429.552813/s
    ws_echo_messages_sent.......: 28653  1429.552813/s
    ws_echo_rtt_ms..............: avg=2.433218 min=0        med=2       max=35       p(90)=4       p(95)=5      
    ws_msgs_received............: 28653  1429.552813/s
    ws_msgs_sent................: 28653  1429.552813/s
    ws_session_duration.........: avg=34.95ms  min=1.74ms   med=21.73ms max=274.41ms p(90)=80.23ms p(95)=99.73ms
    ws_sessions.................: 68576  3421.38742/s




running (20.0s), 000/120 VUs, 68576 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
