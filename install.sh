#!/usr/bin/env bash
# Global Claude Code setup. Run once per machine; rerun to update. Idempotent.
set -euo pipefail
cd "$(dirname "$0")"

echo "== Marketplaces"
claude plugin marketplace add anthropics/claude-plugins-official 2>/dev/null || true
claude plugin marketplace update claude-plugins-official

echo "== Plugins (official marketplace, auto-updating)"
for p in mattpocock-skills frontend-design; do
  claude plugin install "$p@claude-plugins-official" 2>/dev/null || claude plugin update "$p@claude-plugins-official"
done

echo "== Standalone user-level skills"
# The `skills` CLI needs Node >= 22.20. Pick up fnm's default Node if the shell hasn't.
command -v fnm >/dev/null 2>&1 && eval "$(fnm env --shell bash)"
node_major="$(node -v 2>/dev/null | sed 's/^v\([0-9]*\).*/\1/')"
if [ "${node_major:-0}" -ge 22 ]; then
  npx -y skills@latest add bencium/bencium-marketplace -g --skill ui-typography
  npx -y skills@latest add bencium/bencium-marketplace -g --skill design-audit
  npx -y skills@latest update -g
else
  echo "!! Node $(node -v 2>/dev/null || echo '(missing)') is too old for the skills CLI (needs >= 22.20); skipping standalone skills"
fi

echo "== User-level MCP servers"
claude mcp add context7 -s user -- npx -y @upstash/context7-mcp@latest 2>/dev/null || true
claude mcp add playwright -s user -- npx @playwright/mcp@latest 2>/dev/null || true

echo "== Global CLAUDE.md (symlink -> $PWD/global/CLAUDE.md)"
mkdir -p ~/.claude
target=~/.claude/CLAUDE.md
if [ -e "$target" ] && [ ! -L "$target" ]; then
  mv "$target" "$target.bak"
  echo "!! existing ~/.claude/CLAUDE.md moved to CLAUDE.md.bak; merge anything you want to keep into global/CLAUDE.md"
fi
ln -sfn "$PWD/global/CLAUDE.md" "$target"

echo "Done. Start a new claude session to load the updated versions."
