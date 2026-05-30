# JS Deno Parallel — WS Echo Benchmark

**Tested**: 2026-05-30 22:59:55 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8048/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,196.13 |
| Avg Latency | 2.678768ms |
| Max Latency | 20ms |
| Total Requests | 44,021 |
| Transfer/sec | N/A |
| Port | 8048 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 2.678768 | 7 | 20 |
| Iteration Duration | 54.56ms | 120.99ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 72.12MiB |
| Memory Limit | 1GiB |
| Memory % | 7.04% |
| CPU % | 0.00% |
| PIDs | 20 |

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


running (01.0s), 120/120 VUs, 3835 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 5981 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 8064 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 10120 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 12126 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 14187 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 16299 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 18245 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 20316 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 22428 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 24557 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 26691 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 28848 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 30998 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 33151 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 35294 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 37509 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 39630 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 41742 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 43883 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=7


  █ TOTAL RESULTS 

    checks_total.......: 44021  2196.134979/s
    checks_succeeded...: 6.19%  2727 out of 44021
    checks_failed......: 93.80% 41294 out of 44021

    ✗ ws connected (101)
      ↳  6% — ✓ 2727 / ✗ 41294

    EXECUTION
    iteration_duration..........: avg=54.56ms  min=4.04ms med=48.07ms max=339.23ms p(90)=102.51ms p(95)=120.99ms
    iterations..................: 44021  2196.134979/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 532 kB 27 kB/s
    data_sent...................: 8.5 MB 423 kB/s

    WEBSOCKET
    ws_connecting...............: avg=54.29ms  min=2.19ms med=47.95ms max=339.16ms p(90)=102.44ms p(95)=120.86ms
    ws_echo_messages_received...: 2727   136.045526/s
    ws_echo_messages_sent.......: 2727   136.045526/s
    ws_echo_rtt_ms..............: avg=2.678768 min=0      med=2       max=20       p(90)=5        p(95)=7       
    ws_msgs_received............: 2727   136.045526/s
    ws_msgs_sent................: 2727   136.045526/s
    ws_session_duration.........: avg=54.49ms  min=4ms    med=48ms    max=339.18ms p(90)=102.46ms p(95)=120.91ms
    ws_sessions.................: 44021  2196.134979/s




running (20.0s), 000/120 VUs, 44021 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
