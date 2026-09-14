#!/usr/bin/env bash
set -euo pipefail
# The official Expo plugin installs Expo Skills AND registers the Expo MCP server.
# Command from https://docs.expo.dev/agents/claude/
claude plugin install expo@claude-plugins-official 2>/dev/null || claude plugin update expo@claude-plugins-official
echo "Expo plugin installed. Run /mcp inside claude to sign in to your Expo account."
