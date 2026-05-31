# C++ Drogon — WS Echo Benchmark

**Tested**: 2026-05-31 17:29:57 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8017/ws/echo`

> **Warning**: Some checks failed during this test.

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 3,343.73\* |
| Avg Latency | 1.184897ms |
| Max Latency | 42ms |
| Total Requests | 67,032 |
| Transfer/sec | N/A |
| Port | 8017 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 1.184897 | 3 | 42 |
| Iteration Duration | 35.82ms | 126.34ms | — |
| Checks Passed | 66.04% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 72.95MiB |
| Memory Limit | 1GiB |
| Memory % | 7.12% |
| CPU % | 0.08% |
| PIDs | 65 |

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


running (01.0s), 120/120 VUs, 14938 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 24385 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 31504 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 38295 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 44291 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 45897 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 47546 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 49156 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 50735 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 52428 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 54000 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 55545 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 57008 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 58299 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 59781 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 61305 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 62873 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 64158 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 65382 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 66910 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=3


  █ TOTAL RESULTS 

    checks_total.......: 67032  3343.734284/s
    checks_succeeded...: 66.04% 44268 out of 67032
    checks_failed......: 33.95% 22764 out of 67032

    ✗ ws connected (101)
      ↳  66% — ✓ 44268 / ✗ 22764

    EXECUTION
    iteration_duration..........: avg=35.82ms  min=373.77µs med=18.84ms max=505.62ms p(90)=97.6ms  p(95)=126.34ms
    iterations..................: 67032 3343.734284/s
    vus.........................: 120   min=120       max=120
    vus_max.....................: 120   min=120       max=120

    NETWORK
    data_received...............: 12 MB 610 kB/s
    data_sent...................: 15 MB 726 kB/s

    WEBSOCKET
    ws_connecting...............: avg=34.85ms  min=245.36µs med=17.31ms max=505.55ms p(90)=97.41ms p(95)=126.2ms 
    ws_echo_messages_received...: 44268 2208.205473/s
    ws_echo_messages_sent.......: 44268 2208.205473/s
    ws_echo_rtt_ms..............: avg=1.184897 min=0        med=1       max=42       p(90)=2       p(95)=3       
    ws_msgs_received............: 44268 2208.205473/s
    ws_msgs_sent................: 44268 2208.205473/s
    ws_session_duration.........: avg=35.75ms  min=344.52µs med=18.77ms max=505.56ms p(90)=97.48ms p(95)=126.24ms
    ws_sessions.................: 67032 3343.734284/s




running (20.0s), 000/120 VUs, 67032 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s

time="2026-05-31T19:29:34+02:00" level=warning msg="Error from API server" error="listen tcp 127.0.0.1:6565: bind: address already in use"
```
