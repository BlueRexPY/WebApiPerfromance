# Rust Actix — WS Echo Benchmark

**Tested**: 2026-05-30 20:41:01 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8005/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,273.95 |
| Avg Latency | 1.040941ms |
| Max Latency | 17ms |
| Total Requests | 65,638 |
| Transfer/sec | N/A |
| Port | 8005 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 1.040941 | 3 | 17 |
| Iteration Duration | 36.59ms | 109.05ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 4.555MiB |
| Memory Limit | 1GiB |
| Memory % | 0.44% |
| CPU % | 0.04% |
| PIDs | 4 |

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


running (01.0s), 120/120 VUs, 9025 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 21518 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 30056 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 33104 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 35210 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 37307 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 39368 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 40968 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 43016 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 45084 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 46967 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 49073 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 51046 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 53133 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 55266 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 57356 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 59250 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 61367 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 63446 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 65510 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=3


  █ TOTAL RESULTS 

    checks_total.......: 65638  3273.947615/s
    checks_succeeded...: 46.25% 30361 out of 65638
    checks_failed......: 53.74% 35277 out of 65638

    ✗ ws connected (101)
      ↳  46% — ✓ 30361 / ✗ 35277

    EXECUTION
    iteration_duration..........: avg=36.59ms  min=433.65µs med=22.5ms  max=343.83ms p(90)=87.49ms p(95)=109.05ms
    iterations..................: 65638  3273.947615/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 5.9 MB 295 kB/s
    data_sent...................: 14 MB  684 kB/s

    WEBSOCKET
    ws_connecting...............: avg=35.96ms  min=166.66µs med=21.84ms max=343.75ms p(90)=87.41ms p(95)=108.95ms
    ws_echo_messages_received...: 30361  1514.371607/s
    ws_echo_messages_sent.......: 30361  1514.371607/s
    ws_echo_rtt_ms..............: avg=1.040941 min=0        med=1       max=17       p(90)=2       p(95)=3       
    ws_msgs_received............: 30361  1514.371607/s
    ws_msgs_sent................: 30361  1514.371607/s
    ws_session_duration.........: avg=36.53ms  min=402.68µs med=22.43ms max=343.76ms p(90)=87.42ms p(95)=108.98ms
    ws_sessions.................: 65638  3273.947615/s




running (20.0s), 000/120 VUs, 65638 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
