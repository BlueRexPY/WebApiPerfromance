# Go Chi — WS Echo Benchmark

**Tested**: 2026-05-31 16:18:11 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8023/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,614.83 |
| Avg Latency | 3.007731ms |
| Max Latency | 42ms |
| Total Requests | 32,408 |
| Transfer/sec | N/A |
| Port | 8023 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 3.007731 | 8 | 42 |
| Iteration Duration | 74.16ms | 178.1ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 14.26MiB |
| Memory Limit | 1GiB |
| Memory % | 1.39% |
| CPU % | 0.00% |
| PIDs | 36 |

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


running (01.0s), 120/120 VUs, 5085 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 7561 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 9006 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 10442 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 11846 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 13158 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 14479 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 15833 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 17265 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 18688 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 20081 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 21472 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 22870 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 24185 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 25488 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 26854 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 28190 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 29525 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 30906 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 32277 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=8


  █ TOTAL RESULTS 

    checks_total.......: 32408  1614.826467/s
    checks_succeeded...: 20.75% 6726 out of 32408
    checks_failed......: 79.24% 25682 out of 32408

    ✗ ws connected (101)
      ↳  20% — ✓ 6726 / ✗ 25682

    EXECUTION
    iteration_duration..........: avg=74.16ms  min=3.03ms med=60.59ms max=413.02ms p(90)=149.29ms p(95)=178.1ms 
    iterations..................: 32408  1614.826467/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 1.1 MB 53 kB/s
    data_sent...................: 6.4 MB 321 kB/s

    WEBSOCKET
    ws_connecting...............: avg=73.37ms  min=2.3ms  med=60.17ms max=412.96ms p(90)=149.14ms p(95)=177.85ms
    ws_echo_messages_received...: 6726   335.143261/s
    ws_echo_messages_sent.......: 6726   335.143261/s
    ws_echo_rtt_ms..............: avg=3.007731 min=0      med=2       max=42       p(90)=5        p(95)=8       
    ws_msgs_received............: 6726   335.143261/s
    ws_msgs_sent................: 6726   335.143261/s
    ws_session_duration.........: avg=74.06ms  min=3ms    med=60.51ms max=412.97ms p(90)=149.19ms p(95)=177.99ms
    ws_sessions.................: 32408  1614.826467/s




running (20.1s), 000/120 VUs, 32408 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
