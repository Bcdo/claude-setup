#!/usr/bin/env bash
set -euo pipefail
npx -y skills@latest add https://github.com/nuxt/ui --skill nuxt-ui
claude mcp add --transport http nuxt-ui https://ui.nuxt.com/mcp -s project 2>/dev/null || true
