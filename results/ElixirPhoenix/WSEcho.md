# Elixir Phoenix — WS Echo Benchmark

**Tested**: 2026-05-31 18:32:18 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8007/ws/echo`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,636.58\* |
| Avg Latency | 10.628049ms |
| Max Latency | 28ms |
| Total Requests | 52,864 |
| Transfer/sec | N/A |
| Port | 8007 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 10.628049 | 19 | 28 |
| Iteration Duration | 45.44ms | 130.82ms | — |
| Checks Passed | 53.44% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 164.2MiB |
| Memory Limit | 1GiB |
| Memory % | 16.04% |
| CPU % | 0.20% |
| PIDs | 85 |

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


running (01.0s), 120/120 VUs, 6291 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 13224 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 18232 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 23032 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 27676 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 29619 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 31354 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 33081 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 34841 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 36601 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 38310 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 40029 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 41739 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 43470 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 45128 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 46608 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 47869 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 49465 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 51062 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 52737 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=19


  █ TOTAL RESULTS 

    checks_total.......: 52864  2636.584328/s
    checks_succeeded...: 53.44% 28251 out of 52864
    checks_failed......: 46.55% 24613 out of 52864

    ✗ ws connected (101)
      ↳  53% — ✓ 28251 / ✗ 24613

    EXECUTION
    iteration_duration..........: avg=45.44ms   min=641.49µs med=28.67ms max=500.29ms p(90)=103.24ms p(95)=130.82ms
    iterations..................: 52864  2636.584328/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 6.0 MB 297 kB/s
    data_sent...................: 11 MB  559 kB/s

    WEBSOCKET
    ws_connecting...............: avg=39.62ms   min=346.73µs med=18.01ms max=500.22ms p(90)=103.06ms p(95)=130.74ms
    ws_echo_messages_received...: 28251  1409.014525/s
    ws_echo_messages_sent.......: 28251  1409.014525/s
    ws_echo_rtt_ms..............: avg=10.628049 min=0        med=10      max=28       p(90)=17       p(95)=19      
    ws_msgs_received............: 28251  1409.014525/s
    ws_msgs_sent................: 28251  1409.014525/s
    ws_session_duration.........: avg=45.37ms   min=595.33µs med=28.59ms max=500.24ms p(90)=103.13ms p(95)=130.77ms
    ws_sessions.................: 52864  2636.584328/s




running (20.1s), 000/120 VUs, 52864 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s

time="2026-05-31T20:31:56+02:00" level=warning msg="Error from API server" error="listen tcp 127.0.0.1:6565: bind: address already in use"
```
