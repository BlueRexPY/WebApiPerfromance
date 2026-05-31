# Java Spring Boot — WS Echo Benchmark

**Tested**: 2026-05-31 18:35:02 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8009/ws/echo`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,414.56\* |
| Avg Latency | 10.955277ms |
| Max Latency | 173ms |
| Total Requests | 48,452 |
| Transfer/sec | N/A |
| Port | 8009 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 10.955277 | 69 | 173 |
| Iteration Duration | 49.6ms | 128.98ms | — |
| Checks Passed | 59.34% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 144.2MiB |
| Memory Limit | 1GiB |
| Memory % | 14.08% |
| CPU % | 0.06% |
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


running (01.0s), 120/120 VUs, 1145 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 3176 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 7042 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 11418 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 15618 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 19272 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 23054 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 26827 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 29553 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 31289 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 33038 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 34778 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 36534 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 38131 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 39826 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 41625 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 43243 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 44908 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 46621 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 48319 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=69


  █ TOTAL RESULTS 

    checks_total.......: 48452  2414.562944/s
    checks_succeeded...: 59.34% 28755 out of 48452
    checks_failed......: 40.65% 19697 out of 48452

    ✗ ws connected (101)
      ↳  59% — ✓ 28755 / ✗ 19697

    EXECUTION
    iteration_duration..........: avg=49.6ms    min=682.43µs med=37.07ms max=433.86ms p(90)=101.97ms p(95)=128.98ms
    iterations..................: 48452  2414.562944/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 4.5 MB 226 kB/s
    data_sent...................: 10 MB  518 kB/s

    WEBSOCKET
    ws_connecting...............: avg=42.95ms   min=456.06µs med=26.45ms max=433.74ms p(90)=95.38ms  p(95)=124.29ms
    ws_echo_messages_received...: 28755  1432.980217/s
    ws_echo_messages_sent.......: 28755  1432.980217/s
    ws_echo_rtt_ms..............: avg=10.955277 min=0        med=4       max=173      p(90)=44       p(95)=69      
    ws_msgs_received............: 28755  1432.980217/s
    ws_msgs_sent................: 28755  1432.980217/s
    ws_session_duration.........: avg=49.54ms   min=653.87µs med=36.99ms max=433.79ms p(90)=101.9ms  p(95)=128.91ms
    ws_sessions.................: 48452  2414.562944/s




running (20.1s), 000/120 VUs, 48452 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s

time="2026-05-31T20:34:40+02:00" level=warning msg="Error from API server" error="listen tcp 127.0.0.1:6565: bind: address already in use"
```
