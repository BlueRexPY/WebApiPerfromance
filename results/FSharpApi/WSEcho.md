# F# .NET API — WS Echo Benchmark

**Tested**: 2026-05-30 20:52:45 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8019/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,098.91 |
| Avg Latency | 5.449474ms |
| Max Latency | 48ms |
| Total Requests | 62,115 |
| Transfer/sec | N/A |
| Port | 8019 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 5.449474 | 12 | 48 |
| Iteration Duration | 38.66ms | 105.03ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 46.3MiB |
| Memory Limit | 1GiB |
| Memory % | 4.52% |
| CPU % | 0.06% |
| PIDs | 21 |

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


running (01.0s), 120/120 VUs, 6010 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 13835 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 19903 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 23316 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 25402 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 28814 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 34183 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 36312 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 38475 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 40531 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 42710 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 44841 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 47012 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 49180 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 51347 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 53496 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 55558 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 57687 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 59849 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 61990 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=12


  █ TOTAL RESULTS 

    checks_total.......: 62115  3098.912228/s
    checks_succeeded...: 45.73% 28411 out of 62115
    checks_failed......: 54.26% 33704 out of 62115

    ✗ ws connected (101)
      ↳  45% — ✓ 28411 / ✗ 33704

    EXECUTION
    iteration_duration..........: avg=38.66ms  min=3.11ms med=24.4ms  max=289.35ms p(90)=84.1ms  p(95)=105.03ms
    iterations..................: 62115  3098.912228/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 6.0 MB 301 kB/s
    data_sent...................: 13 MB  647 kB/s

    WEBSOCKET
    ws_connecting...............: avg=36.01ms  min=1.09ms med=21.53ms max=289.28ms p(90)=83.96ms p(95)=104.92ms
    ws_echo_messages_received...: 28411  1417.422447/s
    ws_echo_messages_sent.......: 28411  1417.422447/s
    ws_echo_rtt_ms..............: avg=5.449474 min=0      med=4       max=48       p(90)=10      p(95)=12      
    ws_msgs_received............: 28411  1417.422447/s
    ws_msgs_sent................: 28411  1417.422447/s
    ws_session_duration.........: avg=38.59ms  min=3.07ms med=24.34ms max=289.3ms  p(90)=84.01ms p(95)=104.94ms
    ws_sessions.................: 62115  3098.912228/s




running (20.0s), 000/120 VUs, 62115 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
