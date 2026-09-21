# New App Setup — Screen by Screen

This repository is already a GitHub Template Repository. It contains the safety constitution that prevents agents from mixing directories or silently acting on the wrong app.

## Preferred method: create every new app from the template

### Screen 1 — Open the master template

Open `LCHEROURI/universal-vibe-coding-bootstrap` on GitHub. Confirm the page belongs to the intended GitHub owner before continuing.

### Screen 2 — Create from the template

Click:

**Use this template → Create a new repository**

### Screen 3 — Name and visibility

Enter the new application repository name. Choose the intended owner and Public or Private visibility. Do not create the app under a different owner by accident.

### Screen 4 — Open the new repository

Open the new repository in Freebuff, Codex, Claude Code, Cursor, Gemini, Lovable, Replit, or another coding environment.

### Screen 5 — Start the agent safely

Paste the contents of `BOOTSTRAP_PROMPT.md`, or say:

```text
Read the root AGENTS.md and WORKFLOW.md before doing anything else. Verify the absolute Git root, remote owner/name, branch, HEAD, and status. Report the repository identity and plan. Do not work outside this repository or perform commit, push, PR, merge, deployment, production, or external-service changes without explicit authorization.
```

### Screen 6 — Confirm the starting files

The new repository should contain:

- `AGENTS.md`
- `WORKFLOW.md`
- `BOOTSTRAP_PROMPT.md`
- `NEW_APP_SETUP.md`
- `README.md`
- `scripts/install-bootstrap.sh`
- `skills/progressive-distillation/SKILL.md`

The first agent report must identify the same repository root and remote that you opened on GitHub. If it names another project, stop the agent and open a new thread/workspace from the correct repository.

## Existing repository method

From the **root of the target repository**, run:

```bash
curl -fsSL https://raw.githubusercontent.com/LCHEROURI/universal-vibe-coding-bootstrap/main/scripts/install-bootstrap.sh | bash
```

The installer:

- verifies it is run inside a Git repository;
- installs `WORKFLOW.md` if absent;
- installs the Progressive Distillation skill if absent;
- creates `AGENTS.md` only if absent;
- never overwrites existing policy files.

If `AGENTS.md` already exists, merge the universal repository-lock and authorization rules manually or ask an agent to perform a diff-reviewed merge. Preserve stricter project-specific rules and do not blindly overwrite the file.

## Before any GitHub or deployment action

The agent must re-check:

```bash
git rev-parse --show-toplevel
git remote -v
git branch --show-current
git log -1 --oneline
git status --short
```

Then confirm the target repository, branch, source revision, environment, and explicit authorization. A merge does not authorize deployment; a push does not authorize a PR; a PR does not authorize a merge.

## Boundary rule

Never trust a folder name, app title, preview URL, cloud project, or previous conversation as repository identity. The verified Git root and remote are authoritative. If anything conflicts, stop and report it.
