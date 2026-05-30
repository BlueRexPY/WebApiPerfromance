# JS Node Bun Cluster — WS Orders Benchmark

**Tested**: 2026-05-30 21:15:35 UTC
**Command**: `k6 run --vus 120 --duration 20s ws://127.0.0.1:8047/ws/orders`

## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | 2,601.38 |
| Avg Latency | 23.960936ms |
| Max Latency | 384ms |
| Total Requests | 52,123 |
| Transfer/sec | N/A |
| Port | 8047 |

## k6 Stats

| Stat | Avg | p(95) | Max |
| --- | --- | --- | --- |
| RTT (ms) | 23.960936 | 54 | 384 |
| Iteration Duration | 46.07ms | 98.77ms | — |
| Checks Passed | 100.00% | — | — |

## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | 81.34MiB |
| Memory Limit | 1GiB |
| Memory % | 7.94% |
| CPU % | 1.08% |
| PIDs | 48 |

## Raw Output

```
/\      Grafana   /‾‾/  
    /\  /  \     |\  __   /  /   
   /  \/    \    | |/ /  /   ‾‾\ 
  /          \   |   (  |  (‾)  |
 / __________ \  |_|\_\  \_____/ 


     execution: local
        script: /home/admin/Projects/Python/WebApiPerfromance/benchmarks/ws/orders.js
        output: -

     scenarios: (100.00%) 1 scenario, 120 max VUs, 50s max duration (incl. graceful stop):
              * default: 120 looping VUs for 20s (gracefulStop: 30s)


running (01.0s), 120/120 VUs, 2645 complete and 0 interrupted iterations
default   [   5% ] 120 VUs  01.0s/20s

running (02.0s), 120/120 VUs, 6231 complete and 0 interrupted iterations
default   [  10% ] 120 VUs  02.0s/20s

running (03.0s), 120/120 VUs, 8805 complete and 0 interrupted iterations
default   [  15% ] 120 VUs  03.0s/20s

running (04.0s), 120/120 VUs, 11731 complete and 0 interrupted iterations
default   [  20% ] 120 VUs  04.0s/20s

running (05.0s), 120/120 VUs, 14181 complete and 0 interrupted iterations
default   [  25% ] 120 VUs  05.0s/20s

running (06.0s), 120/120 VUs, 16804 complete and 0 interrupted iterations
default   [  30% ] 120 VUs  06.0s/20s

running (07.0s), 120/120 VUs, 20087 complete and 0 interrupted iterations
default   [  35% ] 120 VUs  07.0s/20s

running (08.0s), 120/120 VUs, 22969 complete and 0 interrupted iterations
default   [  40% ] 120 VUs  08.0s/20s

running (09.0s), 120/120 VUs, 25819 complete and 0 interrupted iterations
default   [  45% ] 120 VUs  09.0s/20s

running (10.0s), 120/120 VUs, 28839 complete and 0 interrupted iterations
default   [  50% ] 120 VUs  10.0s/20s

running (11.0s), 120/120 VUs, 31030 complete and 0 interrupted iterations
default   [  55% ] 120 VUs  11.0s/20s

running (12.0s), 120/120 VUs, 33288 complete and 0 interrupted iterations
default   [  60% ] 120 VUs  12.0s/20s

running (13.0s), 120/120 VUs, 35633 complete and 0 interrupted iterations
default   [  65% ] 120 VUs  13.0s/20s

running (14.0s), 120/120 VUs, 37980 complete and 0 interrupted iterations
default   [  70% ] 120 VUs  14.0s/20s

running (15.0s), 120/120 VUs, 40356 complete and 0 interrupted iterations
default   [  75% ] 120 VUs  15.0s/20s

running (16.0s), 120/120 VUs, 42710 complete and 0 interrupted iterations
default   [  80% ] 120 VUs  16.0s/20s

running (17.0s), 120/120 VUs, 45043 complete and 0 interrupted iterations
default   [  85% ] 120 VUs  17.0s/20s

running (18.0s), 120/120 VUs, 47393 complete and 0 interrupted iterations
default   [  90% ] 120 VUs  18.0s/20s

running (19.0s), 120/120 VUs, 49614 complete and 0 interrupted iterations
default   [  95% ] 120 VUs  19.0s/20s

running (20.0s), 120/120 VUs, 51990 complete and 0 interrupted iterations
default   [ 100% ] 120 VUs  20.0s/20s


  █ THRESHOLDS 

    ws_orders_rtt_ms
    ✓ 'p(95)<500' p(95)=54


  █ TOTAL RESULTS 

    checks_total.......: 80359  4010.602866/s
    checks_succeeded...: 70.27% 56472 out of 80359
    checks_failed......: 29.72% 23887 out of 80359

    ✓ received 100 orders
    ✗ ws connected (101)
      ↳  54% — ✓ 28236 / ✗ 23887

    EXECUTION
    iteration_duration.............: avg=46.07ms   min=1.17ms   med=40.02ms max=439.05ms p(90)=83.97ms p(95)=98.77ms
    iterations.....................: 52123  2601.384452/s
    vus............................: 120    min=120       max=120
    vus_max........................: 120    min=120       max=120

    NETWORK
    data_received..................: 318 MB 16 MB/s
    data_sent......................: 11 MB  545 kB/s

    WEBSOCKET
    ws_connecting..................: avg=32.53ms   min=123.67µs med=22.33ms max=272.64ms p(90)=73.24ms p(95)=92.84ms
    ws_msgs_received...............: 28236  1409.218414/s
    ws_msgs_sent...................: 28236  1409.218414/s
    ws_orders_requests_sent........: 28236  1409.218414/s
    ws_orders_responses_received...: 28236  1409.218414/s
    ws_orders_rtt_ms...............: avg=23.960936 min=0        med=20      max=384      p(90)=45      p(95)=54     
    ws_session_duration............: avg=46.02ms   min=1.16ms   med=39.97ms max=438.97ms p(90)=83.92ms p(95)=98.71ms
    ws_sessions....................: 52123  2601.384452/s




running (20.0s), 000/120 VUs, 52123 complete and 0 interrupted iterations
default ✓ [ 100% ] 120 VUs  20s
```
