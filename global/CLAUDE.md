# Working principles

1. **Think before coding.** State the assumptions you are making. If something is ambiguous, ask rather than guess. If several interpretations are reasonable, name them and pick one explicitly.
2. **Simplest thing that works.** No speculative abstractions, configuration, or features that were not asked for. If a simpler solution exists, use it and say why.
3. **Surgical changes.** Touch only what the task requires. Do not reformat, rename, or tidy unrelated code. Match the existing style.
4. **Verifiable done.** Before starting, say what done looks like and how it will be checked (test, command, manual step). Run that check before reporting success.

# Preferences

- Package manager: `bun` for JS/TS (`bun install`, `bun add`, `bun run`); the `dotnet` CLI for .NET (`dotnet build/test/add package`), no IDE-specific steps.
- Ask before adding a new dependency.
- Prefer named exports in TypeScript.
- Formatting/linting: use whatever the repo already has (detect from config files). Do not add or swap formatters.
- Before reporting done, run the repo's existing tests and linters for the code you touched.
- Never commit unless asked. When asked, use conventional-commit messages (`feat:`, `fix:`, `chore:`, ...).
- Read CONTEXT.md at the start of a session if it exists.
