# Rust Axum — WS Echo Benchmark

**Tested**: 2026-05-30 20:46:13 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8022/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,949.83 |
| Avg Latency | 9.369969ms |
| Max Latency | 157ms |
| Total Requests | 59,113 |
| Transfer/sec | N/A |
| Port | 8022 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 1.223297 | 4 | 26 |
| Iteration Duration | 36.84ms | 109.47ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 9.691MiB |
| Memory Limit | 1GiB |
| Memory % | 0.30% |
| CPU % | 0.00% |
| PIDs | 3 |

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


running (01.0s), 120/120 VUs, 8045 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 19869 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 27399 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 31819 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 34154 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 36402 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 38457 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 40539 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 42643 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 44726 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 46770 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 48839 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 50948 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 52897 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 54930 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 56762 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 58791 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 60847 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 62939 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 65043 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=4


  █ TOTAL RESULTS 

    checks_total.......: 65177  3252.221689/s
    checks_succeeded...: 45.99% 29978 out of 65177
    checks_failed......: 54.00% 35199 out of 65177

    ✗ ws connected (101)
      ↳  45% — ✓ 29978 / ✗ 35199

    EXECUTION
    iteration_duration..........: avg=36.84ms  min=382.39µs med=23.08ms max=287.1ms  p(90)=87.8ms  p(95)=109.47ms
    iterations..................: 65177  3252.221689/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 5.8 MB 292 kB/s
    data_sent...................: 14 MB  679 kB/s

    WEBSOCKET
    ws_connecting...............: avg=36.13ms  min=200.06µs med=22.24ms max=287.01ms p(90)=87.69ms p(95)=109.38ms
    ws_echo_messages_received...: 29978  1495.851325/s
    ws_echo_messages_sent.......: 29978  1495.851325/s
    ws_echo_rtt_ms..............: avg=1.223297 min=0        med=1       max=26       p(90)=3       p(95)=4       
    ws_msgs_received............: 29978  1495.851325/s
    ws_msgs_sent................: 29978  1495.851325/s
    ws_session_duration.........: avg=36.78ms  min=355.34µs med=23.01ms max=287.03ms p(90)=87.73ms p(95)=109.4ms 
    ws_sessions.................: 65177  3252.221689/s




running (20.0s), 000/120 VUs, 65177 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
