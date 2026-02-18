"""Root-level conftest.py — bridges pytest discovery with the benchmarks package.

This file MUST live at the project root so VS Code Test Explorer
(which runs `pytest` from the workspace root) can discover:
  1. Custom CLI options (--service, --wrk-threads, etc.)
  2. Session-scoped fixtures (wrk_config, service_manager)
  3. All parametrized test cases in benchmarks/test_benchmarks.py

The actual hooks and fixtures are defined in benchmarks/conftest.py.
pytest auto-loads both conftest files (root first, then package).
This file exists solely to ensure root-level discovery works.
"""
