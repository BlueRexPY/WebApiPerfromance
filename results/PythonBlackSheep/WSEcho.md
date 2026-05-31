# Python BlackSheep — WS Echo Benchmark

**Tested**: 2026-05-31 16:15:53 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8097/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,102.19 |
| Avg Latency | 8.427806ms |
| Max Latency | 97ms |
| Total Requests | 42,132 |
| Transfer/sec | N/A |
| Port | 8097 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 8.427806 | 54 | 97 |
| Iteration Duration | 57ms | 119.26ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 189.2MiB |
| Memory Limit | 1GiB |
| Memory % | 18.48% |
| CPU % | 0.82% |
| PIDs | 26 |

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


running (01.0s), 120/120 VUs, 2122 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 4010 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 5841 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 7289 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 9425 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 11407 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 13527 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 15717 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 17904 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 20000 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 22130 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 24274 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 26398 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 28522 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 30736 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 33012 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 35307 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 37499 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 39738 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 41999 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=54


  █ TOTAL RESULTS 

    checks_total.......: 42132  2102.190748/s
    checks_succeeded...: 23.47% 9890 out of 42132
    checks_failed......: 76.52% 32242 out of 42132

    ✗ ws connected (101)
      ↳  23% — ✓ 9890 / ✗ 32242

    EXECUTION
    iteration_duration..........: avg=57ms     min=10.93ms med=51.84ms max=329.95ms p(90)=101.18ms p(95)=119.26ms
    iterations..................: 42132  2102.190748/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 2.1 MB 105 kB/s
    data_sent...................: 8.4 MB 420 kB/s

    WEBSOCKET
    ws_connecting...............: avg=54.92ms  min=7.06ms  med=50.07ms max=329.89ms p(90)=98.94ms  p(95)=114.77ms
    ws_echo_messages_received...: 9890   493.464979/s
    ws_echo_messages_sent.......: 9890   493.464979/s
    ws_echo_rtt_ms..............: avg=8.427806 min=0       med=4       max=97       p(90)=11       p(95)=54      
    ws_msgs_received............: 9890   493.464979/s
    ws_msgs_sent................: 9890   493.464979/s
    ws_session_duration.........: avg=56.94ms  min=10.88ms med=51.76ms max=329.91ms p(90)=101.1ms  p(95)=119.15ms
    ws_sessions.................: 42132  2102.190748/s




running (20.0s), 000/120 VUs, 42132 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
