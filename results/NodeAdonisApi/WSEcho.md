# JS Node AdonisJS — WS Echo Benchmark

**Tested**: 2026-05-30 23:31:00 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8088/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,988.29 |
| Avg Latency | 0ms |
| Max Latency | 0ms |
| Total Requests | 59,917 |
| Transfer/sec | N/A |
| Port | 8088 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0 | 0 | 0 |
| Iteration Duration | 40.09ms | 111.08ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 45.76MiB |
| Memory Limit | 1GiB |
| Memory % | 4.47% |
| CPU % | 0.00% |
| PIDs | 12 |

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


running (01.0s), 120/120 VUs, 1916 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 6323 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 16939 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 22570 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 26539 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 30774 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 34064 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 36006 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 37569 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 39559 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 41593 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 43588 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 45652 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 47687 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 49716 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 51649 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 53715 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 55739 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 57769 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 59786 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=0


  █ TOTAL RESULTS 

    checks_total.......: 59917   2988.289214/s
    checks_succeeded...: 0.00%   0 out of 59917
    checks_failed......: 100.00% 59917 out of 59917

    ✗ ws connected (101)
      ↳  0% — ✓ 0 / ✗ 59917

    EXECUTION
    iteration_duration....: avg=40.09ms min=4.18ms med=23.15ms max=317.8ms  p(90)=88.63ms p(95)=111.08ms
    iterations............: 59917  2988.289214/s
    vus...................: 120    min=120       max=120
    vus_max...............: 120    min=120       max=120

    NETWORK
    data_received.........: 5.4 MB 268 kB/s
    data_sent.............: 11 MB  568 kB/s

    WEBSOCKET
    ws_connecting.........: avg=40.01ms min=4.13ms med=23.08ms max=317.7ms  p(90)=88.55ms p(95)=111ms   
    ws_echo_rtt_ms........: avg=0       min=0      med=0       max=0        p(90)=0       p(95)=0       
    ws_session_duration...: avg=40.03ms min=4.14ms med=23.1ms  max=317.72ms p(90)=88.58ms p(95)=111.02ms
    ws_sessions...........: 59917  2988.289214/s




running (20.1s), 000/120 VUs, 59917 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
