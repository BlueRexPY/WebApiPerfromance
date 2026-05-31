# Go net/http — WS Echo Benchmark

**Tested**: 2026-05-31 16:19:16 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8032/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,354.50 |
| Avg Latency | 2.412089ms |
| Max Latency | 37ms |
| Total Requests | 47,190 |
| Transfer/sec | N/A |
| Port | 8032 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 2.412089 | 6 | 37 |
| Iteration Duration | 50.9ms | 117.55ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 15.08MiB |
| Memory Limit | 512MiB |
| Memory % | 2.94% |
| CPU % | 0.00% |
| PIDs | 39 |

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


running (01.0s), 120/120 VUs, 6300 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 8641 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 10757 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 12924 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 15191 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 17454 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 19718 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 21941 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 24129 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 26330 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 28528 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 30645 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 32742 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 34682 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 36618 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 38843 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 40869 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 42716 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 44869 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 47053 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=6


  █ TOTAL RESULTS 

    checks_total.......: 47190  2354.495386/s
    checks_succeeded...: 14.23% 6717 out of 47190
    checks_failed......: 85.76% 40473 out of 47190

    ✗ ws connected (101)
      ↳  14% — ✓ 6717 / ✗ 40473

    EXECUTION
    iteration_duration..........: avg=50.9ms   min=2.48ms med=43.61ms max=299.44ms p(90)=97.56ms p(95)=117.55ms
    iterations..................: 47190  2354.495386/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 1.1 MB 53 kB/s
    data_sent...................: 9.2 MB 461 kB/s

    WEBSOCKET
    ws_connecting...............: avg=50.45ms  min=1.92ms med=43.28ms max=299.35ms p(90)=97.46ms p(95)=117.45ms
    ws_echo_messages_received...: 6717   335.137646/s
    ws_echo_messages_sent.......: 6717   335.137646/s
    ws_echo_rtt_ms..............: avg=2.412089 min=0      med=2       max=37       p(90)=4       p(95)=6       
    ws_msgs_received............: 6717   335.137646/s
    ws_msgs_sent................: 6717   335.137646/s
    ws_session_duration.........: avg=50.83ms  min=2.45ms med=43.55ms max=299.36ms p(90)=97.49ms p(95)=117.48ms
    ws_sessions.................: 47190  2354.495386/s




running (20.0s), 000/120 VUs, 47190 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
