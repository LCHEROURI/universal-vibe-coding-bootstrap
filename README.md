# Universal Vibe Coding Bootstrap

A reusable safety and workflow foundation for AI-assisted repositories.

This repository is a GitHub Template Repository. Start new projects from it so the repository-boundary rules exist before an agent writes application code.

## What is included

- `AGENTS.md` — the short constitution every agent should read first. It verifies repository identity, locks the agent to one root, protects existing work, and separates implementation from commit, push, PR, merge, and deployment authorization.
- `WORKFLOW.md` — the complete Universal Vibe Coding Safety Workflow v1.0 with the detailed 43-section operating procedure.
- `BOOTSTRAP_PROMPT.md` — a session-start prompt for agents that do not automatically discover `AGENTS.md`.
- `NEW_APP_SETUP.md` — screen-by-screen GitHub template and existing-repository instructions.
- `scripts/install-bootstrap.sh` — a safe installer for an existing Git repository. It never overwrites existing policy files.
- `skills/progressive-distillation/SKILL.md` — a reusable reflection workflow for meaningful failures, discoveries, regressions, architectural decisions, security findings, and patterns.

## New-project workflow

1. Open this repository on GitHub.
2. Select **Use this template → Create a new repository**.
3. Create the new app under the intended owner and visibility.
4. Open the new repository in your coding environment.
5. Paste the startup prompt from `BOOTSTRAP_PROMPT.md`.
6. The first agent report must show the repository root, remote, branch, and worktree before coding begins.

## Existing repository workflow

From the root of the target repository, run:

```bash
curl -fsSL https://raw.githubusercontent.com/LCHEROURI/universal-vibe-coding-bootstrap/main/scripts/install-bootstrap.sh | bash
```

The installer adds `WORKFLOW.md` and the Progressive Distillation skill. It creates `AGENTS.md` only when one is absent; if a project already has `AGENTS.md`, merge the universal rules manually while preserving stricter project-specific rules.

## Boundary rule

A directory name, preview URL, Firebase project, Convex deployment, or prior conversation never establishes repository identity. Agents must verify the absolute Git root and remote before editing, and again before GitHub or deployment actions. Project-specific rules may be stricter, but they may not weaken the universal repository lock, security protections, verification honesty, or action-specific authorization gates.
