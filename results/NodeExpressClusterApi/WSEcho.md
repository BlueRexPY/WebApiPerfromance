# JS Node Express Cluster — WS Echo Benchmark

**Tested**: 2026-05-30 22:47:06 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8041/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,858.64 |
| Avg Latency | 4.254489ms |
| Max Latency | 131ms |
| Total Requests | 37,303 |
| Transfer/sec | N/A |
| Port | 8041 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0.96784 | 2 | 61 |
| Iteration Duration | 45.11ms | 109.34ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 98.7MiB |
| Memory Limit | 1GiB |
| Memory % | 9.25% |
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


running (01.0s), 120/120 VUs, 1960 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4276 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 7239 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 9819 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 11726 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 14490 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 18972 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 21023 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 23052 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 25124 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 29472 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 32964 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 35000 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 37194 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 41197 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 44868 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 46934 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 48727 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 51078 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 53095 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=2


  █ TOTAL RESULTS 

    checks_total.......: 53230  2656.39977/s
    checks_succeeded...: 53.09% 28265 out of 53230
    checks_failed......: 46.90% 24965 out of 53230

    ✗ ws connected (101)
      ↳  53% — ✓ 28265 / ✗ 24965

    EXECUTION
    iteration_duration..........: avg=45.11ms min=3.43ms med=37.1ms  max=350.07ms p(90)=86.54ms p(95)=109.34ms
    iterations..................: 53230  2656.39977/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 4.5 MB 223 kB/s
    data_sent...................: 11 MB  563 kB/s

    WEBSOCKET
    ws_connecting...............: avg=44.48ms min=1.85ms med=36.05ms max=350ms    p(90)=86.14ms p(95)=109.08ms
    ws_echo_messages_received...: 28265  1410.541791/s
    ws_echo_messages_sent.......: 28265  1410.541791/s
    ws_echo_rtt_ms..............: avg=0.96784 min=0      med=1       max=61       p(90)=1       p(95)=2       
    ws_msgs_received............: 28265  1410.541791/s
    ws_msgs_sent................: 28265  1410.541791/s
    ws_session_duration.........: avg=45.06ms min=3.32ms med=37.02ms max=350.01ms p(90)=86.45ms p(95)=109.26ms
    ws_sessions.................: 53230  2656.39977/s




running (20.0s), 000/120 VUs, 53230 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
