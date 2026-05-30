# JS Bun Hono — WS Echo Benchmark

**Tested**: 2026-05-30 23:03:46 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8051/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,125.38 |
| Avg Latency | 2.333985ms |
| Max Latency | 26ms |
| Total Requests | 42,606 |
| Transfer/sec | N/A |
| Port | 8051 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 2.333985 | 6 | 26 |
| Iteration Duration | 56.37ms | 123.32ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 18.34MiB |
| Memory Limit | 1GiB |
| Memory % | 1.79% |
| CPU % | 0.15% |
| PIDs | 17 |

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


running (01.0s), 120/120 VUs, 3853 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 5919 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 8009 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 10106 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 11893 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 13676 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 15769 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 17923 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 20031 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 21935 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 24001 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 26131 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 27964 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 30098 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 32226 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 34377 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 36380 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 38328 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 40406 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 42478 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=6


  █ TOTAL RESULTS 

    checks_total.......: 42606  2125.381476/s
    checks_succeeded...: 6.00%  2557 out of 42606
    checks_failed......: 93.99% 40049 out of 42606

    ✗ ws connected (101)
      ↳  6% — ✓ 2557 / ✗ 40049

    EXECUTION
    iteration_duration..........: avg=56.37ms  min=2.79ms med=50.55ms max=335.92ms p(90)=104.26ms p(95)=123.32ms
    iterations..................: 42606  2125.381476/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 499 kB 25 kB/s
    data_sent...................: 8.2 MB 409 kB/s

    WEBSOCKET
    ws_connecting...............: avg=56.13ms  min=2.37ms med=50.41ms max=335.86ms p(90)=104.1ms  p(95)=123.23ms
    ws_echo_messages_received...: 2557   127.554815/s
    ws_echo_messages_sent.......: 2557   127.554815/s
    ws_echo_rtt_ms..............: avg=2.333985 min=0      med=2       max=26       p(90)=4        p(95)=6       
    ws_msgs_received............: 2557   127.554815/s
    ws_msgs_sent................: 2557   127.554815/s
    ws_session_duration.........: avg=56.3ms   min=2.76ms med=50.48ms max=335.87ms p(90)=104.12ms p(95)=123.24ms
    ws_sessions.................: 42606  2125.381476/s




running (20.0s), 000/120 VUs, 42606 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
