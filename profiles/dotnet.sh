#!/usr/bin/env bash
set -euo pipefail
# No strong official .NET skill; Context7 (global) covers docs.
# Installs your own conventions skill from this repo.
mkdir -p .claude/skills
if [ ! -d .claude/skills/dotnet-conventions ]; then
  cp -r "$SETUP_DIR/skills/dotnet-conventions" .claude/skills/
  echo "installed .claude/skills/dotnet-conventions"
fi
