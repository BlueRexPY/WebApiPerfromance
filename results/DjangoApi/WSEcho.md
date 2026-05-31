# Python Django — WS Echo Benchmark

**Tested**: 2026-05-31 16:14:37 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8016/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,817.25 |
| Avg Latency | 0ms |
| Max Latency | 0ms |
| Total Requests | 36,424 |
| Transfer/sec | N/A |
| Port | 8016 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0 | 0 | 0 |
| Iteration Duration | 65.94ms | 150.08ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 483MiB |
| Memory Limit | 1GiB |
| Memory % | 47.17% |
| CPU % | 0.10% |
| PIDs | 133 |

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


running (01.0s), 120/120 VUs, 423 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 1782 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 3383 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 4571 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 5911 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 8062 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 9448 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 10598 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 12669 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 14495 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 16620 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 18877 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 21062 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 23301 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 25434 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 27655 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 29831 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 31898 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 34150 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 36300 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=0


  █ TOTAL RESULTS 

    checks_total.......: 36424   1817.251322/s
    checks_succeeded...: 0.00%   0 out of 36424
    checks_failed......: 100.00% 36424 out of 36424

    ✗ ws connected (101)
      ↳  0% — ✓ 0 / ✗ 36424

    EXECUTION
    iteration_duration....: avg=65.94ms min=2.72ms med=55.32ms max=1.21s p(90)=108.84ms p(95)=150.08ms
    iterations............: 36424  1817.251322/s
    vus...................: 120    min=120       max=120
    vus_max...............: 120    min=120       max=120

    NETWORK
    data_received.........: 4.9 MB 242 kB/s
    data_sent.............: 6.9 MB 345 kB/s

    WEBSOCKET
    ws_connecting.........: avg=65.84ms min=2.69ms med=55.23ms max=1.21s p(90)=108.68ms p(95)=149.97ms
    ws_echo_rtt_ms........: avg=0       min=0      med=0       max=0     p(90)=0        p(95)=0       
    ws_session_duration...: avg=65.87ms min=2.69ms med=55.26ms max=1.21s p(90)=108.74ms p(95)=149.98ms
    ws_sessions...........: 36424  1817.251322/s




running (20.0s), 000/120 VUs, 36424 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
