# Python Litestar — WS Echo Benchmark

**Tested**: 2026-05-31 16:12:12 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8000/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,139.59 |
| Avg Latency | 2.881129ms |
| Max Latency | 22ms |
| Total Requests | 42,887 |
| Transfer/sec | N/A |
| Port | 8000 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 2.881129 | 7 | 22 |
| Iteration Duration | 56ms | 121.84ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 166.4MiB |
| Memory Limit | 1GiB |
| Memory % | 16.25% |
| CPU % | 0.00% |
| PIDs | 37 |

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


running (01.0s), 120/120 VUs, 2546 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4683 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 6943 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 9198 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 11398 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 13675 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 15956 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 17992 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 20240 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 22467 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 24132 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 26039 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 27914 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 29940 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 32049 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 34163 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 36335 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 38581 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 40611 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 115/120 VUs, 42772 complete and 0 interrupted iterations
default ↓ [ 100% ] 120 VUs  20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=7


  █ TOTAL RESULTS 

    checks_total.......: 42887  2139.593374/s
    checks_succeeded...: 1.56%  673 out of 42887
    checks_failed......: 98.43% 42214 out of 42887

    ✗ ws connected (101)
      ↳  1% — ✓ 673 / ✗ 42214

    EXECUTION
    iteration_duration..........: avg=56ms     min=3.86ms med=50.18ms max=295.01ms p(90)=102.28ms p(95)=121.84ms
    iterations..................: 42887  2139.593374/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 131 kB 6.5 kB/s
    data_sent...................: 8.2 MB 408 kB/s

    WEBSOCKET
    ws_connecting...............: avg=55.85ms  min=3.12ms med=50.07ms max=294.93ms p(90)=102.18ms p(95)=121.66ms
    ws_echo_messages_received...: 673    33.575357/s
    ws_echo_messages_sent.......: 673    33.575357/s
    ws_echo_rtt_ms..............: avg=2.881129 min=0      med=2       max=22       p(90)=5        p(95)=7       
    ws_msgs_received............: 673    33.575357/s
    ws_msgs_sent................: 673    33.575357/s
    ws_session_duration.........: avg=55.93ms  min=3.82ms med=50.11ms max=294.96ms p(90)=102.22ms p(95)=121.7ms 
    ws_sessions.................: 42887  2139.593374/s




running (20.0s), 000/120 VUs, 42887 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
