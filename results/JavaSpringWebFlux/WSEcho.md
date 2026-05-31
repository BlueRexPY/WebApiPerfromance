# Java Spring WebFlux — WS Echo Benchmark

**Tested**: 2026-05-31 18:37:41 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8065/ws/echo`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,385.58\* |
| Avg Latency | 9.667761ms |
| Max Latency | 119ms |
| Total Requests | 47,849 |
| Transfer/sec | N/A |
| Port | 8065 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 9.667761 | 62 | 119 |
| Iteration Duration | 50.2ms | 130.35ms | — |
| Checks Passed | 60.45% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 141.4MiB |
| Memory Limit | 1GiB |
| Memory % | 13.80% |
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


running (01.0s), 120/120 VUs, 1272 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 3594 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 7584 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 11762 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 15839 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 19562 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 23306 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 27200 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 29861 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 31591 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 33315 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 35036 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 36710 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 38327 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 39804 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 41495 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 43193 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 44934 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 46361 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 47717 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=62


  █ TOTAL RESULTS 

    checks_total.......: 47849  2385.579817/s
    checks_succeeded...: 60.45% 28928 out of 47849
    checks_failed......: 39.54% 18921 out of 47849

    ✗ ws connected (101)
      ↳  60% — ✓ 28928 / ✗ 18921

    EXECUTION
    iteration_duration..........: avg=50.2ms   min=1.62ms   med=37.33ms max=411.33ms p(90)=101.75ms p(95)=130.35ms
    iterations..................: 47849  2385.579817/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 4.6 MB 228 kB/s
    data_sent...................: 10 MB  512 kB/s

    WEBSOCKET
    ws_connecting...............: avg=44.19ms  min=939.51µs med=26.93ms max=411.27ms p(90)=97.32ms  p(95)=128.48ms
    ws_echo_messages_received...: 28928  1442.246503/s
    ws_echo_messages_sent.......: 28928  1442.246503/s
    ws_echo_rtt_ms..............: avg=9.667761 min=0        med=4       max=119      p(90)=18       p(95)=62      
    ws_msgs_received............: 28928  1442.246503/s
    ws_msgs_sent................: 28928  1442.246503/s
    ws_session_duration.........: avg=50.13ms  min=1.59ms   med=37.23ms max=411.28ms p(90)=101.68ms p(95)=130.23ms
    ws_sessions.................: 47849  2385.579817/s




running (20.1s), 000/120 VUs, 47849 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s

time="2026-05-31T20:37:19+02:00" level=warning msg="Error from API server" error="listen tcp 127.0.0.1:6565: bind: address already in use"
```
