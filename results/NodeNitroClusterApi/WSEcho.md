# JS Node Nitro Cluster — WS Echo Benchmark

**Tested**: 2026-05-30 23:54:45 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8093/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,662.30 |
| Avg Latency | 0ms |
| Max Latency | 0ms |
| Total Requests | 53,367 |
| Transfer/sec | N/A |
| Port | 8093 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0 | 0 | 0 |
| Iteration Duration | 45ms | 109.44ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 87.78MiB |
| Memory Limit | 1GiB |
| Memory % | 8.57% |
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


running (01.0s), 120/120 VUs, 3427 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 7737 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 12768 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 16221 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 20233 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 23771 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 27251 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 29796 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 31771 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 33720 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 35693 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 37654 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 39659 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 41751 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 43732 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 45293 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 47203 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 49185 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 51154 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 53224 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=0


  █ TOTAL RESULTS 

    checks_total.......: 53367   2662.299182/s
    checks_succeeded...: 0.00%   0 out of 53367
    checks_failed......: 100.00% 53367 out of 53367

    ✗ ws connected (101)
      ↳  0% — ✓ 0 / ✗ 53367

    EXECUTION
    iteration_duration....: avg=45ms    min=8.54ms med=37.86ms max=292.95ms p(90)=87.5ms  p(95)=109.44ms
    iterations............: 53367 2662.299182/s
    vus...................: 120   min=120       max=120
    vus_max...............: 120   min=120       max=120

    NETWORK
    data_received.........: 14 MB 710 kB/s
    data_sent.............: 10 MB 506 kB/s

    WEBSOCKET
    ws_connecting.........: avg=44.93ms min=8.51ms med=37.78ms max=292.87ms p(90)=87.42ms p(95)=109.32ms
    ws_echo_rtt_ms........: avg=0       min=0      med=0       max=0        p(90)=0       p(95)=0       
    ws_session_duration...: avg=44.95ms min=8.51ms med=37.8ms  max=292.88ms p(90)=87.44ms p(95)=109.35ms
    ws_sessions...........: 53367 2662.299182/s




running (20.0s), 000/120 VUs, 53367 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
