# JS Node Koa — WS Echo Benchmark

**Tested**: 2026-05-30 22:44:29 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8038/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,291.79 |
| Avg Latency | 0.414436ms |
| Max Latency | 23ms |
| Total Requests | 45,939 |
| Transfer/sec | N/A |
| Port | 8038 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0.414436 | 1 | 23 |
| Iteration Duration | 52.29ms | 123.64ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 18.55MiB |
| Memory Limit | 1GiB |
| Memory % | 1.81% |
| CPU % | 0.00% |
| PIDs | 7 |

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


running (01.0s), 120/120 VUs, 4755 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 9725 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 11809 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 13800 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 15778 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 17807 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 19796 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 21825 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 23724 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 25679 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 27796 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 29936 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 31508 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 33571 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 35619 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 37606 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 39712 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 41682 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 43725 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 45799 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=1


  █ TOTAL RESULTS 

    checks_total.......: 45939  2291.79406/s
    checks_succeeded...: 19.27% 8853 out of 45939
    checks_failed......: 80.72% 37086 out of 45939

    ✗ ws connected (101)
      ↳  19% — ✓ 8853 / ✗ 37086

    EXECUTION
    iteration_duration..........: avg=52.29ms  min=9.94ms med=42.73ms max=360.18ms p(90)=101.45ms p(95)=123.64ms
    iterations..................: 45939  2291.79406/s
    vus.........................: 120    min=120      max=120
    vus_max.....................: 120    min=120      max=120

    NETWORK
    data_received...............: 1.4 MB 70 kB/s
    data_sent...................: 9.1 MB 454 kB/s

    WEBSOCKET
    ws_connecting...............: avg=52.11ms  min=9.89ms med=42.62ms max=360.11ms p(90)=101.32ms p(95)=123.44ms
    ws_echo_messages_received...: 8853   441.656388/s
    ws_echo_messages_sent.......: 8853   441.656388/s
    ws_echo_rtt_ms..............: avg=0.414436 min=0      med=0       max=23       p(90)=1        p(95)=1       
    ws_msgs_received............: 8853   441.656388/s
    ws_msgs_sent................: 8853   441.656388/s
    ws_session_duration.........: avg=52.23ms  min=9.9ms  med=42.65ms max=360.13ms p(90)=101.39ms p(95)=123.53ms
    ws_sessions.................: 45939  2291.79406/s




running (20.0s), 000/120 VUs, 45939 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
