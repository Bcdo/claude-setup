# Task for Claude Code

This repo is my personal Claude Code setup: a global install script, a per-project `apply`
script, and stack profiles. It was drafted without access to a terminal, so some names are
best guesses. Please finish it:

1. Run `claude plugin marketplace list` and `/plugin` to confirm the plugin IDs used in
   `install.sh` (`mattpocock-skills`, `frontend-design`). Fix if they differ.
2. Confirm the skill names in `install.sh` and `profiles/*.sh` using
   `npx -y skills@latest add <repo> --list` for: bencium/bencium-marketplace,
   vercel-labs/agent-skills, nuxt/ui.
3. Resolve every `TODO(claude-code)` comment:
   - `profiles/expo.sh`: fetch https://docs.expo.dev/agents/claude/ and use the exact
     official plugin install command.
   - `profiles/astro.sh`: find the current Astro docs MCP server URL.
4. Fill in the "Preferences" section of `global/CLAUDE.md` by asking me a few questions.
5. Make `install.sh` and `apply` executable, and add
   `ln -sf "$PWD/apply" ~/.local/bin/claude-apply` to the README instructions.
6. Run `install.sh` on this machine and report what succeeded and what didn't.

Do not install Superpowers. Do not add MCP servers beyond those listed.
Keep the scripts idempotent.
