# JS Node AdonisJS Cluster — WS Orders Benchmark

**Tested**: 2026-05-30 23:49:18 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8091/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,001.26 |
| Avg Latency | 0ms |
| Max Latency | 0ms |
| Total Requests | 60,182 |
| Transfer/sec | N/A |
| Port | 8091 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0 | 0 | 0 |
| Iteration Duration | 39.93ms | 102.09ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 121.4MiB |
| Memory Limit | 1GiB |
| Memory % | 11.85% |
| CPU % | 8.30% |
| PIDs | 31 |

## Raw Output

```
/\      Grafana   /‾‾/  
    /\  /  \     |\  __   /  /   
   /  \/    \    | |/ /  /   ‾‾\ 
  /          \   |   (  |  (‾)  |
 / __________ \  |_|\_\  \_____/ 


     execution: local
        script: /home/admin/Projects/Python/WebApiPerfromance/benchmarks/ws/orders.js
        output: -

     scenarios: (100.00%) 1 scenario, 120 max VUs, 50s max duration (incl. graceful stop):
              * default: 120 looping VUs for 20s (gracefulStop: 30s)


running (01.0s), 120/120 VUs, 4874 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 11132 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 16169 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 21743 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 27538 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 29909 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 31975 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 34107 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 36114 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 38217 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 40425 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 42685 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 44962 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 47219 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 49499 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 51661 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 53881 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 55994 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 58059 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 60054 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=0


  █ TOTAL RESULTS 

    checks_total.......: 60182   3001.256728/s
    checks_succeeded...: 0.00%   0 out of 60182
    checks_failed......: 100.00% 60182 out of 60182

    ✗ ws connected (101)
      ↳  0% — ✓ 0 / ✗ 60182

    EXECUTION
    iteration_duration....: avg=39.93ms min=2.33ms med=29.77ms max=365.68ms p(90)=82.3ms  p(95)=102.09ms
    iterations............: 60182  3001.256728/s
    vus...................: 120    min=120       max=120
    vus_max...............: 120    min=120       max=120

    NETWORK
    data_received.........: 5.4 MB 269 kB/s
    data_sent.............: 12 MB  576 kB/s

    WEBSOCKET
    ws_connecting.........: avg=39.86ms min=2.22ms med=29.69ms max=365.61ms p(90)=82.25ms p(95)=102.02ms
    ws_orders_rtt_ms......: avg=0       min=0      med=0       max=0        p(90)=0       p(95)=0       
    ws_session_duration...: avg=39.88ms min=2.26ms med=29.71ms max=365.64ms p(90)=82.26ms p(95)=102.03ms
    ws_sessions...........: 60182  3001.256728/s




running (20.1s), 000/120 VUs, 60182 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
