#!/usr/bin/env bash
set -euo pipefail
# https://github.com/AgriciDaniel/claude-seo — 25 skills, 18 agents and an Edit/Write hook.
# Project-scoped on purpose so none of it loads in projects that don't need SEO.
claude plugin marketplace add AgriciDaniel/claude-seo 2>/dev/null || true
claude plugin install claude-seo@agricidaniel-claude-seo --scope project 2>/dev/null \
  || claude plugin update claude-seo@agricidaniel-claude-seo
echo "Once per machine: run '/seo setup' inside claude (Python venv + Playwright Chromium), then '/seo doctor'."
