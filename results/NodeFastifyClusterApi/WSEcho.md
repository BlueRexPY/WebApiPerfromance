# JS Node Fastify Cluster — WS Echo Benchmark

**Tested**: 2026-05-30 22:49:14 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8042/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,798.21 |
| Avg Latency | 4.512097ms |
| Max Latency | 202ms |
| Total Requests | 36,041 |
| Transfer/sec | N/A |
| Port | 8042 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0.877591 | 1 | 80 |
| Iteration Duration | 43.88ms | 104.49ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 102.7MiB |
| Memory Limit | 1GiB |
| Memory % | 9.48% |
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


running (01.0s), 120/120 VUs, 3182 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 6215 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 8240 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 10301 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 13234 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 17317 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 20224 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 22309 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 25060 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 29012 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 31770 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 33823 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 36358 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 40402 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 43466 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 45523 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 47968 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 50195 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 52415 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 54591 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=1


  █ TOTAL RESULTS 

    checks_total.......: 54730  2731.032526/s
    checks_succeeded...: 51.66% 28274 out of 54730
    checks_failed......: 48.33% 26456 out of 54730

    ✗ ws connected (101)
      ↳  51% — ✓ 28274 / ✗ 26456

    EXECUTION
    iteration_duration..........: avg=43.88ms  min=6.42ms med=34.03ms max=308ms    p(90)=82.64ms p(95)=104.49ms
    iterations..................: 54730  2731.032526/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 4.5 MB 223 kB/s
    data_sent...................: 12 MB  577 kB/s

    WEBSOCKET
    ws_connecting...............: avg=43.31ms  min=3.29ms med=33.16ms max=307.93ms p(90)=82.45ms p(95)=104.34ms
    ws_echo_messages_received...: 28274  1410.875455/s
    ws_echo_messages_sent.......: 28274  1410.875455/s
    ws_echo_rtt_ms..............: avg=0.877591 min=0      med=1       max=80       p(90)=1       p(95)=1       
    ws_msgs_received............: 28274  1410.875455/s
    ws_msgs_sent................: 28274  1410.875455/s
    ws_session_duration.........: avg=43.83ms  min=6.39ms med=33.97ms max=307.95ms p(90)=82.57ms p(95)=104.41ms
    ws_sessions.................: 54730  2731.032526/s




running (20.0s), 000/120 VUs, 54730 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
