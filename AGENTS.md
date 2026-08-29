# Universal Vibe Coding AGENTS.md

## Purpose
This file establishes the default operating rules for AI coding agents working in this repository.

## Mandatory startup sequence
Before meaningful coding work:

1. Confirm the correct project name.
2. Confirm the correct repository.
3. Confirm the active branch.
4. Read this `AGENTS.md`.
5. Read any nested `AGENTS.md` files that apply to the files being changed.
6. Read the relevant architecture, data model, security, testing, and implementation documentation.
7. Inspect the current implementation before editing.
8. Prefer the smallest safe change.
9. Run appropriate validation and tests.
10. Run Progressive Distillation after meaningful failures, discoveries, regressions, or architectural decisions.

## Repository containment
- Work only inside this repository unless explicitly authorized otherwise.
- Never silently switch repositories.
- Never copy secrets or production credentials between projects.
- Confirm repository and branch before commits, PRs, merges, deployments, migrations, or destructive operations.

## Change safety
- Prefer targeted fixes over broad rewrites.
- Preserve working behavior outside the requested scope.
- Do not disable tests, validation, security checks, or protections merely to make a change pass.
- Do not hide or suppress failing tests.
- Do not invent missing schema, API, configuration, or infrastructure details. Verify them first.

## Production safety
Never perform these actions without explicit authorization:
- Production deployment
- Merge to protected/default branch
- Destructive database migration
- Production data deletion
- Security-rule weakening
- Credential rotation
- Billing or payment configuration changes

## Testing
Before declaring work complete:
- Run the relevant tests.
- Run typecheck/lint/build when available and relevant.
- Report failures accurately.
- Do not claim success without evidence.

## Progressive Distillation
For meaningful development decisions, failures, regressions, major review findings, security discoveries, or reusable patterns, run:

`skills/progressive-distillation/SKILL.md`

Distilled principles may add stricter guidance, but must never weaken this file or project-specific safety rules.

## Project-specific rules
Add stack-specific and application-specific rules below this line.

---
