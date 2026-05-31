# JS Node NestJS Express Cluster — WS Echo Benchmark

**Tested**: 2026-05-30 22:55:00 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8045/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,801.37 |
| Avg Latency | 3.388545ms |
| Max Latency | 62ms |
| Total Requests | 36,120 |
| Transfer/sec | N/A |
| Port | 8045 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0.901447 | 2 | 52 |
| Iteration Duration | 45.3ms | 106.1ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 114.5MiB |
| Memory Limit | 1GiB |
| Memory % | 10.58% |
| CPU % | 0.00% |
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


running (01.0s), 120/120 VUs, 2000 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 3790 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 6165 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 9741 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 11752 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 13755 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 16902 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 20492 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 23256 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 25095 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 28360 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 32377 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 34923 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 36990 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 40060 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 43953 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 46772 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 48868 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 50938 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 52896 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=2


  █ TOTAL RESULTS 

    checks_total.......: 53021  2645.63656/s
    checks_succeeded...: 53.31% 28269 out of 53021
    checks_failed......: 46.68% 24752 out of 53021

    ✗ ws connected (101)
      ↳  53% — ✓ 28269 / ✗ 24752

    EXECUTION
    iteration_duration..........: avg=45.3ms   min=7.33ms med=37.8ms  max=385.9ms  p(90)=84.81ms p(95)=106.1ms 
    iterations..................: 53021  2645.63656/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 4.5 MB 223 kB/s
    data_sent...................: 11 MB  561 kB/s

    WEBSOCKET
    ws_connecting...............: avg=44.69ms  min=6.63ms med=36.98ms max=385.86ms p(90)=84.62ms p(95)=105.99ms
    ws_echo_messages_received...: 28269  1410.563737/s
    ws_echo_messages_sent.......: 28269  1410.563737/s
    ws_echo_rtt_ms..............: avg=0.901447 min=0      med=1       max=52       p(90)=1       p(95)=2       
    ws_msgs_received............: 28269  1410.563737/s
    ws_msgs_sent................: 28269  1410.563737/s
    ws_session_duration.........: avg=45.24ms  min=7.3ms  med=37.73ms max=385.87ms p(90)=84.74ms p(95)=106.03ms
    ws_sessions.................: 53021  2645.63656/s




running (20.0s), 000/120 VUs, 53021 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
