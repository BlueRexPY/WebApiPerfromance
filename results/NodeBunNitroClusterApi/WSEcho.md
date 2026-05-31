# JS Bun Nitro Cluster — WS Echo Benchmark

**Tested**: 2026-05-31 16:48:21 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8095/ws/echo`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 96,364.29\* |
| Avg Latency | 0ms |
| Max Latency | 0ms |
| Total Requests | 1,927,736 |
| Transfer/sec | N/A |
| Port | 8095 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0 | 0 | 0 |
| Iteration Duration | 1.09ms | 2.76ms | — |
| Checks Passed | 0.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 53.19MiB |
| Memory Limit | 1GiB |
| Memory % | 5.19% |
| CPU % | 0.83% |
| PIDs | 30 |

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


running (01.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 0 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 83848 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 198586 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 313228 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 426797 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 545556 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 666126 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 779026 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 886068 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 1003155 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 1122232 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 1236931 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 1354716 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 1471515 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 1597536 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 1704198 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 1820742 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 1926814 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=0


  █ TOTAL RESULTS 

    checks_total.......: 1927736 96364.287722/s
    checks_succeeded...: 0.00%   0 out of 1927736
    checks_failed......: 100.00% 1927736 out of 1927736

    ✗ ws connected (101)
      ↳  0% — ✓ 0 / ✗ 1927736

    EXECUTION
    iteration_duration....: avg=1.09ms   min=25.64µs med=537.28µs max=3.33s p(90)=1.97ms p(95)=2.76ms
    iterations............: 1927736 96364.287722/s
    vus...................: 120     min=120        max=120
    vus_max...............: 120     min=120        max=120

    NETWORK
    data_received.........: 0 B     0 B/s
    data_sent.............: 452 kB  23 kB/s

    WEBSOCKET
    ws_connecting.........: avg=686.54µs min=14.63µs med=303.39µs max=3.33s p(90)=1.06ms p(95)=1.48ms
    ws_echo_rtt_ms........: avg=0        min=0       med=0        max=0     p(90)=0      p(95)=0     
    ws_session_duration...: avg=836.63µs min=16.32µs med=415.53µs max=3.33s p(90)=1.36ms p(95)=1.93ms
    ws_sessions...........: 1927736 96364.287722/s




running (20.0s), 000/120 VUs, 1927736 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
