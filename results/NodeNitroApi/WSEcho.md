# JS Node Nitro — WS Echo Benchmark

**Tested**: 2026-05-30 23:33:19 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8089/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,789.05 |
| Avg Latency | 0ms |
| Max Latency | 0ms |
| Total Requests | 55,902 |
| Transfer/sec | N/A |
| Port | 8089 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0 | 0 | 0 |
| Iteration Duration | 42.96ms | 108.89ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 31.7MiB |
| Memory Limit | 1GiB |
| Memory % | 3.10% |
| CPU % | 0.00% |
| PIDs | 7 |

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


running (01.0s), 120/120 VUs, 4704 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 13866 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 18054 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 20956 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 24031 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 28100 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 30119 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 31977 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 33885 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 35795 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 37588 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 39530 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 41435 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 43402 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 45361 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 47439 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 49527 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 51629 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 53682 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 55773 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=0


  █ TOTAL RESULTS 

    checks_total.......: 55902   2789.047859/s
    checks_succeeded...: 0.00%   0 out of 55902
    checks_failed......: 100.00% 55902 out of 55902

    ✗ ws connected (101)
      ↳  0% — ✓ 0 / ✗ 55902

    EXECUTION
    iteration_duration....: avg=42.96ms min=9.38ms med=32.28ms max=353.53ms p(90)=87.36ms p(95)=108.89ms
    iterations............: 55902 2789.047859/s
    vus...................: 120   min=120       max=120
    vus_max...............: 120   min=120       max=120

    NETWORK
    data_received.........: 14 MB 710 kB/s
    data_sent.............: 11 MB 530 kB/s

    WEBSOCKET
    ws_connecting.........: avg=42.89ms min=9.34ms med=32.2ms  max=353.45ms p(90)=87.27ms p(95)=108.75ms
    ws_echo_rtt_ms........: avg=0       min=0      med=0       max=0        p(90)=0       p(95)=0       
    ws_session_duration...: avg=42.91ms min=9.35ms med=32.22ms max=353.47ms p(90)=87.3ms  p(95)=108.8ms 
    ws_sessions...........: 55902 2789.047859/s




running (20.0s), 000/120 VUs, 55902 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
