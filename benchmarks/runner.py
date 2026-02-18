"""Core benchmark runner.

Handles Docker lifecycle and wrk execution for benchmark runs.
"""

from __future__ import annotations

import json
import logging
import shutil
import subprocess
import time
from dataclasses import dataclass
from pathlib import Path

from .config import (
    COMPOSE_FILE,
    DEFAULT_WRK,
    SERVICES,
    TEST_TYPES,
    Service,
    TestType,
    WrkConfig,
)
from .formatter import write_result, write_summary
from .parser import WrkResult, parse_wrk_output

logger = logging.getLogger(__name__)

# ── Timeouts ───────────────────────────────────────────────────────────────────
SERVICE_START_TIMEOUT = 120  # seconds to wait for a service to respond
HEALTH_CHECK_INTERVAL = 2  # seconds between health check attempts
WARMUP_REQUESTS = 5  # quick requests before the real benchmark
WARMUP_DELAY = 2  # seconds to wait after warmup


# ── Exceptions ─────────────────────────────────────────────────────────────────
class BenchmarkError(Exception):
    """Raised when a benchmark run fails."""


class ServiceStartError(BenchmarkError):
    """Raised when a Docker service fails to start or become healthy."""


class WrkNotFoundError(BenchmarkError):
    """Raised when wrk is not installed."""


# ── Docker helpers ─────────────────────────────────────────────────────────────
def _compose_cmd() -> list[str]:
    """Return the base docker compose command."""
    # Support both `docker compose` (v2) and `docker-compose` (v1)
    if shutil.which("docker") and _has_compose_v2():
        return ["docker", "compose", "-f", str(COMPOSE_FILE)]
    if shutil.which("docker-compose"):
        return ["docker-compose", "-f", str(COMPOSE_FILE)]
    raise BenchmarkError("Neither 'docker compose' nor 'docker-compose' found")


def _has_compose_v2() -> bool:
    try:
        r = subprocess.run(
            ["docker", "compose", "version"],
            capture_output=True,
            text=True,
            timeout=10,
        )
        return r.returncode == 0
    except Exception:
        return False


def ensure_db_up() -> None:
    """Start the database service and wait for it to be healthy."""
    cmd = _compose_cmd()
    logger.info("Starting database service...")
    subprocess.run(
        [*cmd, "up", "-d", "db"],
        check=True,
        capture_output=True,
        text=True,
    )
    # Wait for healthy
    deadline = time.monotonic() + SERVICE_START_TIMEOUT
    while time.monotonic() < deadline:
        r = subprocess.run(
            [*cmd, "ps", "--format", "json", "db"],
            capture_output=True,
            text=True,
        )
        if r.returncode == 0 and r.stdout.strip():
            try:
                # docker compose v2 outputs JSON
                for line in r.stdout.strip().splitlines():
                    info = json.loads(line)
                    health = info.get("Health", info.get("State", ""))
                    if "healthy" in health.lower():
                        logger.info("Database is healthy")
                        return
            except (json.JSONDecodeError, KeyError):
                pass
        time.sleep(HEALTH_CHECK_INTERVAL)
    raise ServiceStartError("Database did not become healthy in time")


def start_service(service: Service) -> None:
    """Start a specific docker-compose service (and db dependency)."""
    ensure_db_up()
    cmd = _compose_cmd()
    logger.info("Starting service: %s", service.name)
    subprocess.run(
        [*cmd, "up", "-d", "--build", service.name],
        check=True,
        capture_output=True,
        text=True,
    )


def stop_service(service: Service) -> None:
    """Stop a specific docker-compose service (leaves db running)."""
    cmd = _compose_cmd()
    logger.info("Stopping service: %s", service.name)
    subprocess.run(
        [*cmd, "stop", service.name],
        capture_output=True,
        text=True,
    )
    subprocess.run(
        [*cmd, "rm", "-f", service.name],
        capture_output=True,
        text=True,
    )


def stop_all_services() -> None:
    """Stop all services including db."""
    cmd = _compose_cmd()
    logger.info("Stopping all services...")
    subprocess.run(
        [*cmd, "down"],
        capture_output=True,
        text=True,
    )


# ── Health check ───────────────────────────────────────────────────────────────
def wait_for_service(service: Service, timeout: int = SERVICE_START_TIMEOUT) -> None:
    """Wait until the service responds to HTTP on its port."""
    import urllib.error
    import urllib.request

    url = f"http://127.0.0.1:{service.port}/"
    deadline = time.monotonic() + timeout
    last_error = None

    while time.monotonic() < deadline:
        try:
            req = urllib.request.Request(url, method="GET")
            with urllib.request.urlopen(req, timeout=5) as resp:
                if resp.status < 500:
                    logger.info(
                        "Service %s is responding (status %d)",
                        service.name,
                        resp.status,
                    )
                    return
        except Exception as e:
            last_error = e
            time.sleep(HEALTH_CHECK_INTERVAL)

    raise ServiceStartError(
        f"Service {service.name} on port {service.port} did not respond "
        f"within {timeout}s. Last error: {last_error}"
    )


# ── Warmup ─────────────────────────────────────────────────────────────────────
def warmup(service: Service, test_type: TestType) -> None:
    """Send a few warmup requests before benchmarking."""
    import urllib.error
    import urllib.request

    url = f"http://127.0.0.1:{service.port}{test_type.path}"
    logger.info(
        "Warming up %s %s (%d requests)...",
        service.name,
        test_type.path,
        WARMUP_REQUESTS,
    )

    for _ in range(WARMUP_REQUESTS):
        try:
            with urllib.request.urlopen(url, timeout=10):
                pass
        except Exception:
            pass
        time.sleep(0.1)

    time.sleep(WARMUP_DELAY)


# ── wrk execution ─────────────────────────────────────────────────────────────
def run_wrk(
    service: Service,
    test_type: TestType,
    wrk_config: WrkConfig = DEFAULT_WRK,
) -> WrkResult:
    """Execute wrk and return parsed results."""
    if not shutil.which("wrk"):
        raise WrkNotFoundError(
            "wrk is not installed. Install it with: sudo apt install wrk"
        )

    url = f"http://127.0.0.1:{service.port}{test_type.path}"
    cmd = [
        "wrk",
        "-t",
        str(wrk_config.threads),
        "-c",
        str(wrk_config.connections),
        "-d",
        wrk_config.duration_flag,
        url,
    ]

    logger.info("Running: %s", " ".join(cmd))
    result = subprocess.run(
        cmd,
        capture_output=True,
        text=True,
        timeout=wrk_config.duration_seconds + 30,
    )

    if result.returncode != 0:
        raise BenchmarkError(
            f"wrk exited with code {result.returncode}: {result.stderr}"
        )

    return parse_wrk_output(result.stdout)


# ── High-level runners ────────────────────────────────────────────────────────
@dataclass
class BenchmarkResult:
    """Result of a single benchmark run."""

    service: Service
    test_type: TestType
    wrk_result: WrkResult
    result_path: Path
    success: bool
    error: str = ""


def run_benchmark(
    service: Service,
    test_type: TestType,
    wrk_config: WrkConfig = DEFAULT_WRK,
    *,
    manage_docker: bool = True,
) -> BenchmarkResult:
    """Run a complete benchmark: start service → warmup → wrk → save result.

    Args:
        service: The service to benchmark.
        test_type: The test scenario to run.
        wrk_config: wrk parameters.
        manage_docker: If True, start/stop the service automatically.
                       Set False when running in bulk with shared containers.
    """
    try:
        if manage_docker:
            start_service(service)

        wait_for_service(service)
        warmup(service, test_type)
        wrk_result = run_wrk(service, test_type, wrk_config)
        path = write_result(service, test_type, wrk_result, wrk_config)

        logger.info(
            "✓ %s / %s — %.2f req/s → %s",
            service.display_name,
            test_type.label,
            wrk_result.requests_per_sec,
            path,
        )

        return BenchmarkResult(
            service=service,
            test_type=test_type,
            wrk_result=wrk_result,
            result_path=path,
            success=True,
        )

    except Exception as e:
        logger.error("✗ %s / %s — %s", service.display_name, test_type.label, e)
        return BenchmarkResult(
            service=service,
            test_type=test_type,
            wrk_result=WrkResult(),
            result_path=Path(),
            success=False,
            error=str(e),
        )
    finally:
        if manage_docker:
            stop_service(service)


def run_all(
    services: list[str] | None = None,
    test_types: list[str] | None = None,
    wrk_config: WrkConfig = DEFAULT_WRK,
    *,
    parallel_services: bool = False,
) -> list[BenchmarkResult]:
    """Run benchmarks for multiple services and test types.

    Services are tested sequentially (one at a time) to avoid resource
    contention. Each service is started, all its tests run, then stopped.

    Args:
        services: List of service names. None = all services.
        test_types: List of test type names. None = all test types.
        wrk_config: wrk parameters.
        parallel_services: Unused, reserved for future parallel mode.

    Returns:
        List of all benchmark results.
    """
    svc_list = [SERVICES[s] for s in (services or SERVICES.keys())]
    tt_list = [TEST_TYPES[t] for t in (test_types or TEST_TYPES.keys())]

    results: list[BenchmarkResult] = []
    total = len(svc_list) * len(tt_list)
    current = 0

    ensure_db_up()

    for svc in svc_list:
        try:
            start_service(svc)
            wait_for_service(svc)

            for tt in tt_list:
                current += 1
                logger.info(
                    "[%d/%d] Benchmarking %s — %s",
                    current,
                    total,
                    svc.display_name,
                    tt.label,
                )
                result = run_benchmark(svc, tt, wrk_config, manage_docker=False)
                results.append(result)

        except Exception as e:
            logger.error("Failed to start %s: %s", svc.name, e)
            for tt in tt_list:
                current += 1
                results.append(
                    BenchmarkResult(
                        service=svc,
                        test_type=tt,
                        wrk_result=WrkResult(),
                        result_path=Path(),
                        success=False,
                        error=str(e),
                    )
                )
        finally:
            stop_service(svc)

    # Generate summaries
    for tt in tt_list:
        write_summary(tt.name)

    return results
