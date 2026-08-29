# Universal New-App Bootstrap Prompt

Paste this as the FIRST instruction to any coding agent when starting a new application in an existing GitHub repository.

---

Before writing or modifying application code, bootstrap this repository with my universal development controls.

Source repository:
`LCHEROURI/universal-vibe-coding-bootstrap`

Required files:
- `AGENTS.md`
- `skills/progressive-distillation/SKILL.md`

Rules:
1. Confirm the current project name, repository, and active branch first.
2. Do not start feature coding until the bootstrap files exist in this repository.
3. If `AGENTS.md` already exists, preserve all stricter project-specific rules and merge the universal safety rules without deleting or weakening existing controls.
4. If `skills/progressive-distillation/SKILL.md` already exists, compare it with the master copy and preserve any stricter project-specific additions.
5. Never copy secrets, credentials, environment files, production data, or project-specific configuration from the master repository.
6. After installation, verify both files are present and readable.
7. Report exactly what was added or merged.
8. Do not deploy, merge to the protected/default branch, alter production data, or weaken security controls as part of bootstrap.
9. Only after bootstrap verification may normal planning and coding begin.

The root `AGENTS.md` is the controlling startup policy. The Progressive Distillation skill must be used for meaningful failures, regressions, architectural decisions, security discoveries, and reusable development lessons.

---
