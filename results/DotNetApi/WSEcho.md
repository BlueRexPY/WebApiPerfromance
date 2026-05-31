# C# .NET API — WS Echo Benchmark

**Tested**: 2026-05-30 20:48:24 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8001/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,664.70 |
| Avg Latency | 18.879532ms |
| Max Latency | 146ms |
| Total Requests | 53,411 |
| Transfer/sec | N/A |
| Port | 8001 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 5.273728 | 11 | 61 |
| Iteration Duration | 38.08ms | 106.32ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 79.7MiB |
| Memory Limit | 1GiB |
| Memory % | 4.51% |
| CPU % | 0.03% |
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


running (01.0s), 120/120 VUs, 7123 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 15460 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 21395 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 23495 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 26886 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 32769 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 34767 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 36906 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 39068 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 41266 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 43434 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 45595 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 47777 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 49966 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 52162 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 54359 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 56551 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 58737 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 60929 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 62938 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=11


  █ TOTAL RESULTS 

    checks_total.......: 63072  3146.18072/s
    checks_succeeded...: 45.06% 28426 out of 63072
    checks_failed......: 54.93% 34646 out of 63072

    ✗ ws connected (101)
      ↳  45% — ✓ 28426 / ✗ 34646

    EXECUTION
    iteration_duration..........: avg=38.08ms  min=1.9ms    med=23.61ms max=335.12ms p(90)=85.4ms  p(95)=106.32ms
    iterations..................: 63072  3146.18072/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 6.0 MB 301 kB/s
    data_sent...................: 13 MB  656 kB/s

    WEBSOCKET
    ws_connecting...............: avg=35.55ms  min=950.62µs med=21.08ms max=335.05ms p(90)=85.31ms p(95)=106.21ms
    ws_echo_messages_received...: 28426  1417.956195/s
    ws_echo_messages_sent.......: 28426  1417.956195/s
    ws_echo_rtt_ms..............: avg=5.273728 min=0        med=4       max=61       p(90)=9       p(95)=11      
    ws_msgs_received............: 28426  1417.956195/s
    ws_msgs_sent................: 28426  1417.956195/s
    ws_session_duration.........: avg=38.01ms  min=1.89ms   med=23.54ms max=335.07ms p(90)=85.33ms p(95)=106.24ms
    ws_sessions.................: 63072  3146.18072/s




running (20.0s), 000/120 VUs, 63072 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
