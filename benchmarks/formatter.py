"""Markdown result formatters.

Generates per-service result files and combined summary tables.
"""

from __future__ import annotations

from datetime import datetime, timezone
from pathlib import Path

from .config import (
    DEFAULT_WRK,
    RESULTS_DIR,
    SERVICES,
    TEST_TYPES,
    Service,
    TestType,
    WrkConfig,
    result_path,
)
from .parser import MemoryStats, WrkResult


def _ensure_results_dir() -> None:
    RESULTS_DIR.mkdir(parents=True, exist_ok=True)


def write_result(
    service: Service,
    test_type: TestType,
    wrk_result: WrkResult,
    wrk_config: WrkConfig = DEFAULT_WRK,
    memory: MemoryStats | None = None,
) -> Path:
    """Write a single benchmark result to its markdown file."""
    _ensure_results_dir()
    path = result_path(service, test_type)
    path.parent.mkdir(parents=True, exist_ok=True)

    error_note = ""
    if wrk_result.has_errors:
        error_note = "\n> **Warning**: Non-2xx/3xx responses or socket errors occurred during this test.\n"

    rps = f"{wrk_result.requests_per_sec:,.2f}"
    if wrk_result.has_errors:
        rps += "\\*"

    mem_section = ""
    if memory and memory.mem_usage:
        mem_section = f"""
## Resource Usage

| Metric | Value |
| --- | --- |
| Memory Usage | {memory.mem_usage} |
| Memory Limit | {memory.mem_limit} |
| Memory % | {memory.mem_percent} |
| CPU % | {memory.cpu_percent} |
| PIDs | {memory.pids} |
"""

    content = f"""# {service.display_name} — {test_type.label} Benchmark

**Tested**: {datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M:%S UTC")}
**Command**: `wrk -t {wrk_config.threads} -c {wrk_config.connections} -d {wrk_config.duration_flag} http://127.0.0.1:{service.port}{test_type.path}`
{error_note}
## Summary

| Metric | Value |
| --- | --- |
| Requests/sec | {rps} |
| Avg Latency | {wrk_result.avg_latency} |
| Max Latency | {wrk_result.max_latency} |
| Total Requests | {wrk_result.total_requests:,} |
| Transfer/sec | {wrk_result.transfer_per_sec} |
| Port | {service.port} |

## Thread Stats

| Stat | Avg | Stdev | Max | +/- Stdev |
| --- | --- | --- | --- | --- |
| Latency | {wrk_result.avg_latency} | {wrk_result.stdev_latency} | {wrk_result.max_latency} | {wrk_result.latency_pct} |
| Req/Sec | {wrk_result.avg_req_sec} | {wrk_result.stdev_req_sec} | {wrk_result.max_req_sec} | {wrk_result.req_sec_pct} |
{mem_section}
## Raw Output

```
{wrk_result.raw.strip()}
```
"""
    path.write_text(content, encoding="utf-8")
    return path


def write_summary(test_type_name: str | None = None) -> list[Path]:
    """Generate combined summary markdown file(s) from individual results.

    If test_type_name is None, generates summaries for all test types.
    Returns list of written file paths.
    """
    _ensure_results_dir()
    types_to_summarize = (
        {test_type_name: TEST_TYPES[test_type_name]} if test_type_name else TEST_TYPES
    )
    written: list[Path] = []

    for tt_name, tt in types_to_summarize.items():
        rows: list[tuple[float, str]] = []

        for svc in SERVICES.values():
            rpath = result_path(svc, tt)
            if not rpath.exists():
                continue

            content = rpath.read_text(encoding="utf-8")
            # Extract values from the summary table
            import re

            rps_match = re.search(r"Requests/sec\s*\|\s*([^\|]+)", content)
            lat_match = re.search(r"Avg Latency\s*\|\s*([^\|]+)", content)
            max_lat_match = re.search(r"Max Latency\s*\|\s*([^\|]+)", content)
            total_match = re.search(r"Total Requests\s*\|\s*([^\|]+)", content)
            transfer_match = re.search(r"Transfer/sec\s*\|\s*([^\|]+)", content)
            mem_match = re.search(r"Memory Usage\s*\|\s*([^\|]+)", content)

            rps_str = rps_match.group(1).strip() if rps_match else "N/A"
            rps_val = float(
                rps_str.replace(",", "").replace("\\*", "").replace("*", "") or "0"
            )
            lat = lat_match.group(1).strip() if lat_match else "N/A"
            max_lat = max_lat_match.group(1).strip() if max_lat_match else "N/A"
            total = total_match.group(1).strip() if total_match else "N/A"
            transfer = transfer_match.group(1).strip() if transfer_match else "N/A"
            mem = mem_match.group(1).strip() if mem_match else "N/A"

            row = f"| {svc.display_name} | {svc.port} | {rps_str} | {lat} | {max_lat} | {total} | {transfer} | {mem} |"
            rows.append((rps_val, row))

        # Sort descending by req/sec
        rows.sort(key=lambda r: r[0], reverse=True)
        table_rows = "\n".join(r[1] for r in rows)

        summary_path = RESULTS_DIR / f"Summary.{tt.label.replace(' ', '')}.md"
        summary_content = f"""# {tt.label} Performance Test Results — Summary

**Generated**: {datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M:%S UTC")}
**Test Command**: `wrk -t {DEFAULT_WRK.threads} -c {DEFAULT_WRK.connections} -d {DEFAULT_WRK.duration_flag} http://127.0.0.1:PORT{tt.path}`

**Test Configuration**:

- Threads: {DEFAULT_WRK.threads}
- Connections: {DEFAULT_WRK.connections}
- Duration: {DEFAULT_WRK.duration_seconds} seconds
- Endpoint: `{tt.path}` ({tt.label})

## Results

| Framework | Port | Req/sec | Avg Latency | Max Latency | Total Requests | Transfer/sec | Memory |
| --- | --- | --- | --- | --- | --- | --- | --- |
{table_rows}

**Note**: \\* = Non-2xx or 3xx responses occurred during the test
"""
        summary_path.write_text(summary_content, encoding="utf-8")
        written.append(summary_path)

    return written
