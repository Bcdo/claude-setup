---
name: dotnet-conventions
description: Project conventions for .NET backends (layout, naming, testing, EF/minimal API patterns). Use when creating or modifying C#/.NET code in this repo.
---

# .NET conventions

<!-- Fill in over time. Keep it short: only things Claude cannot infer from the code. -->

## Layout
- `src/<Project>/` per project, `tests/<Project>.Tests/` mirroring it.

## Style
- File-scoped namespaces, `var` where the type is obvious, nullable enabled.
- One public type per file.

## API
- Minimal APIs grouped by feature; endpoints in `Endpoints/<Feature>Endpoints.cs`.

## Data
- EF Core; migrations in `Migrations/`; never edit a committed migration.

## Testing
- xUnit; integration tests via WebApplicationFactory; name tests `Method_Scenario_Expected`.
