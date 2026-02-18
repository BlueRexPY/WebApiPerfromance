"""Pytest-based benchmarks — visible in VS Code Test Explorer.

Each (service × test_type) combination is a separate test case.
Run a single test from the VS Code Test UI, or bulk-run everything.

Examples:
    # Run all benchmarks
    pytest benchmarks/

    # Run only for dotnetapiaot
    pytest benchmarks/ --service dotnetapiaot

    # Run only hello_world tests
    pytest benchmarks/ --test-type hello_world

    # Run one specific combo
    pytest benchmarks/test_benchmarks.py -k "dotnetapiaot_hello_world"

    # Skip Docker management (services already running)
    pytest benchmarks/ --no-docker

    # Custom wrk settings
    pytest benchmarks/ --wrk-threads 4 --wrk-connections 200 --wrk-duration 30
"""

from __future__ import annotations

import logging

import pytest

from .config import SERVICES, TEST_TYPES, Service, WrkConfig
from .formatter import write_summary
from .runner import run_benchmark

logger = logging.getLogger(__name__)


# ── Generate test parameters ──────────────────────────────────────────────────
def _build_params() -> list[pytest.param]:
    """Build parametrize params for all service × test_type combos."""
    params = []
    for svc_name, svc in SERVICES.items():
        for tt_name, tt in TEST_TYPES.items():
            params.append(
                pytest.param(
                    svc,
                    tt,
                    id=f"{svc_name}__{tt_name}",
                )
            )
    return params


# ── Benchmark tests ───────────────────────────────────────────────────────────
@pytest.mark.parametrize("service,test_type", _build_params())
def test_benchmark(
    service: Service,
    test_type,
    wrk_config: WrkConfig,
    service_manager,
) -> None:
    """Run a single benchmark and assert valid results.

    Each test case:
    1. Ensures the service is running (via session-scoped manager)
    2. Warms up the endpoint
    3. Runs wrk
    4. Saves the result to results/{Service}.{TestType}.md
    5. Asserts requests_per_sec > 0
    """
    service_manager.ensure_started(service)

    result = run_benchmark(
        service,
        test_type,
        wrk_config,
        manage_docker=False,
    )

    assert result.success, f"Benchmark failed: {result.error}"
    assert result.wrk_result.requests_per_sec > 0, "No requests completed"

    logger.info(
        "%s / %s: %.2f req/s, avg latency %s",
        service.display_name,
        test_type.label,
        result.wrk_result.requests_per_sec,
        result.wrk_result.avg_latency,
    )


# ── Session-end summary ──────────────────────────────────────────────────────
def pytest_sessionfinish(session: pytest.Session, exitstatus: int) -> None:
    """Generate summary files after all tests complete."""
    try:
        paths = write_summary()
        for p in paths:
            logger.info("Summary written: %s", p)
    except Exception as e:
        logger.warning("Failed to write summary: %s", e)
