#!/usr/bin/env bash
set -euo pipefail
# URL from https://docs.astro.build/en/guides/build-with-ai/
ASTRO_MCP_URL="${ASTRO_MCP_URL:-https://mcp.docs.astro.build/mcp}"
claude mcp add --transport http astro-docs "$ASTRO_MCP_URL" -s project 2>/dev/null || true
