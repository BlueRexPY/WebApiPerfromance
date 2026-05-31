# JS Node Hono — WS Echo Benchmark

**Tested**: 2026-05-30 22:45:08 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8039/ws/echo`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 1,494.77 |
| Avg Latency | 2.929763ms |
| Max Latency | 178ms |
| Total Requests | 29,956 |
| Transfer/sec | N/A |
| Port | 8039 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 0.53989 | 1 | 35 |
| Iteration Duration | 46.94ms | 113.93ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 35.67MiB |
| Memory Limit | 1GiB |
| Memory % | 1.75% |
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


running (01.0s), 120/120 VUs, 4631 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 8758 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 13065 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 16973 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 20052 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 22039 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 24003 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 26049 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 28078 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 29983 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 31983 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 34087 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 36221 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 38328 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 40462 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 42576 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 44715 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 46816 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 48899 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 51031 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_echo_rtt_ms
    ✓ 'p(95)<100' p(95)=1


  █ TOTAL RESULTS 

    checks_total.......: 51170  2552.141628/s
    checks_succeeded...: 37.89% 19391 out of 51170
    checks_failed......: 62.10% 31779 out of 51170

    ✗ ws connected (101)
      ↳  37% — ✓ 19391 / ✗ 31779

    EXECUTION
    iteration_duration..........: avg=46.94ms min=10.71ms med=35.03ms max=316.83ms p(90)=90.97ms p(95)=113.93ms
    iterations..................: 51170  2552.141628/s
    vus.........................: 120    min=120       max=120
    vus_max.....................: 120    min=120       max=120

    NETWORK
    data_received...............: 3.1 MB 153 kB/s
    data_sent...................: 11 MB  525 kB/s

    WEBSOCKET
    ws_connecting...............: avg=46.63ms min=10ms    med=34.53ms max=316.73ms p(90)=90.84ms p(95)=113.83ms
    ws_echo_messages_received...: 19391  967.140479/s
    ws_echo_messages_sent.......: 19391  967.140479/s
    ws_echo_rtt_ms..............: avg=0.53989 min=0       med=0       max=35       p(90)=1       p(95)=1       
    ws_msgs_received............: 19391  967.140479/s
    ws_msgs_sent................: 19391  967.140479/s
    ws_session_duration.........: avg=46.89ms min=10.57ms med=34.99ms max=316.75ms p(90)=90.89ms p(95)=113.85ms
    ws_sessions.................: 51170  2552.141628/s




running (20.0s), 000/120 VUs, 51170 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
