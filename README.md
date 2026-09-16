# claude-setup

Personal Claude Code configuration, synced via Git across machines.

## New machine
```bash
git clone git@github.com:Bcdo/claude-setup.git ~/claude-setup
claude                       # first interactive run: log in, seeds official marketplace
~/claude-setup/install.sh    # global skills, plugins, MCP, CLAUDE.md
mkdir -p ~/.local/bin && cd ~/claude-setup && ln -sf "$PWD/apply" ~/.local/bin/claude-apply
```
Rerun `install.sh` any time to update.

## New project
```bash
cd my-app
claude-apply nuxt            # or: expo / astro / react / dotnet / seo (combine as needed)
claude
> /setup-matt-pocock-skills
git add CLAUDE.md .claude .agents skills-lock.json .mcp.json docs/agents CONTEXT.md
git commit -m "agent setup"
```
Other machines get the project config on `git pull`. Plugins enabled per project (`seo`) still
need `claude-apply seo` once on each machine — Claude Code won't auto-install a third-party plugin.

## Enterprise / team repos
Don't commit personal config there. Put plugin enablement in `.claude/settings.local.json`
(gitignored) and rely on the global skills. Propose `/setup-matt-pocock-skills` to the team.
