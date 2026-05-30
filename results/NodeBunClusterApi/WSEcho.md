# JS Node Bun Cluster — WS Echo Benchmark

**Tested**: 2026-05-30 22:58:44 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8047/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,140.26 |
| Avg Latency | 1.865965ms |
| Max Latency | 38ms |
| Total Requests | 42,904 |
| Transfer/sec | N/A |
| Port | 8047 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 1.865965 | 5 | 38 |
| Iteration Duration | 55.98ms | 128.23ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 41.38MiB |
| Memory Limit | 1GiB |
| Memory % | 4.04% |
| CPU % | 0.56% |
| PIDs | 49 |

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


running (01.0s), 120/120 VUs, 4130 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 6216 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 8280 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 10276 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 12285 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 14291 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 16193 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 18223 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 20172 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 22111 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 23933 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 25976 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 28057 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 30172 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 32243 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 34362 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 36492 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 38601 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 40621 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 42767 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=5


  █ TOTAL RESULTS 

    checks_total.......: 42904  2140.256127/s
    checks_succeeded...: 6.86%  2947 out of 42904
    checks_failed......: 93.13% 39957 out of 42904

    ✗ ws connected (101)
      ↳  6% — ✓ 2947 / ✗ 39957

    EXECUTION
    iteration_duration..........: avg=55.98ms  min=2.04ms med=48.33ms max=315.96ms p(90)=106ms    p(95)=128.23ms
    iterations..................: 42904  2140.256127/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 575 kB 29 kB/s
    data_sent...................: 8.3 MB 413 kB/s

    WEBSOCKET
    ws_connecting...............: avg=55.75ms  min=1.71ms med=48.14ms max=315.93ms p(90)=105.86ms p(95)=128.11ms
    ws_echo_messages_received...: 2947   147.010414/s
    ws_echo_messages_sent.......: 2947   147.010414/s
    ws_echo_rtt_ms..............: avg=1.865965 min=0      med=1       max=38       p(90)=4        p(95)=5       
    ws_msgs_received............: 2947   147.010414/s
    ws_msgs_sent................: 2947   147.010414/s
    ws_session_duration.........: avg=55.92ms  min=2ms    med=48.26ms max=315.93ms p(90)=105.93ms p(95)=128.12ms
    ws_sessions.................: 42904  2140.256127/s




running (20.0s), 000/120 VUs, 42904 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
