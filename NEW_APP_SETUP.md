# New App Setup — Screen by Screen

Use this master repository as the starting point for every new app.

## Preferred method: GitHub Template Repository

One-time GitHub setting:

1. Open `LCHEROURI/universal-vibe-coding-bootstrap` on GitHub.
2. Click **Settings**.
3. Stay on **General**.
4. Scroll to the **Template repository** option.
5. Turn on **Template repository**.

After that, for every new app:

1. Open `LCHEROURI/universal-vibe-coding-bootstrap`.
2. Click **Use this template**.
3. Click **Create a new repository**.
4. Enter the new app repository name.
5. Choose Public or Private.
6. Click **Create repository**.
7. Open that new repository in Freebuff, Codex, Lovable, Replit, or your coding environment.
8. Tell the coding agent: `Read AGENTS.md before doing anything else.`

The new repository will begin with:
- `AGENTS.md`
- `skills/progressive-distillation/SKILL.md`
- the bootstrap documentation and installer

## Existing repository method

If an app repository already exists and was not created from the template, use either method below.

### Agent method
Paste the contents of `BOOTSTRAP_PROMPT.md` as the first instruction to the coding agent.

### Terminal method
From the target repository root, run:

```bash
curl -fsSL https://raw.githubusercontent.com/LCHEROURI/universal-vibe-coding-bootstrap/main/scripts/install-bootstrap.sh | bash
```

The installer does not overwrite an existing `AGENTS.md` or Progressive Distillation skill. Existing files must be merged carefully so stricter project-specific rules are preserved.

## Mandatory rule
No meaningful coding should begin until:

- the correct repository is confirmed,
- the active branch is confirmed,
- `AGENTS.md` exists and has been read,
- `skills/progressive-distillation/SKILL.md` exists and is available.
