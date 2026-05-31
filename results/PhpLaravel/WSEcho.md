# PHP Laravel — WS Echo Benchmark

**Tested**: 2026-05-31 17:13:07 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8037/ws/echo`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,327.26\* |
| Avg Latency | 6.875575ms |
| Max Latency | 85ms |
| Total Requests | 46,789 |
| Transfer/sec | N/A |
| Port | 8037 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 6.875575 | 63 | 85 |
| Iteration Duration | 51.41ms | 131.41ms | — |
| Checks Passed | 66.45% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 53.97MiB |
| Memory Limit | 1GiB |
| Memory % | 5.27% |
| CPU % | 207.22% |
| PIDs | 64 |

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


running (01.0s), 120/120 VUs, 5024 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 9959 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 15164 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 17884 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 19866 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 22166 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 24946 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 27317 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 29743 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 31754 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 33283 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 34828 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 36272 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 37769 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 39271 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 40723 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 42208 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 43649 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 45164 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 46640 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=63


  █ TOTAL RESULTS 

    checks_total.......: 46789  2327.262126/s
    checks_succeeded...: 66.45% 31095 out of 46789
    checks_failed......: 33.54% 15694 out of 46789

    ✗ ws connected (101)
      ↳  66% — ✓ 31095 / ✗ 15694

    EXECUTION
    iteration_duration..........: avg=51.41ms  min=491.3µs  med=38.59ms max=400.91ms p(90)=103.27ms p(95)=131.41ms
    iterations..................: 46789  2327.262126/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 7.8 MB 387 kB/s
    data_sent...................: 10 MB  506 kB/s

    WEBSOCKET
    ws_connecting...............: avg=46.62ms  min=221.15µs med=28.27ms max=400.8ms  p(90)=100.1ms  p(95)=131.31ms
    ws_echo_messages_received...: 31095  1546.650191/s
    ws_echo_messages_sent.......: 31095  1546.650191/s
    ws_echo_rtt_ms..............: avg=6.875575 min=0        med=2       max=85       p(90)=8        p(95)=63      
    ws_msgs_received............: 31095  1546.650191/s
    ws_msgs_sent................: 31095  1546.650191/s
    ws_session_duration.........: avg=51.33ms  min=461.8µs  med=38.5ms  max=400.82ms p(90)=103.16ms p(95)=131.34ms
    ws_sessions.................: 46789  2327.262126/s




running (20.1s), 000/120 VUs, 46789 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
