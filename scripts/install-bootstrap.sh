#!/usr/bin/env bash
set -euo pipefail

MASTER_RAW="https://raw.githubusercontent.com/LCHEROURI/universal-vibe-coding-bootstrap/main"

if [ ! -d ".git" ]; then
  echo "ERROR: Run this from the root of the target Git repository."
  exit 1
fi

mkdir -p skills/progressive-distillation

if [ -f AGENTS.md ]; then
  echo "AGENTS.md already exists. It was NOT overwritten."
  echo "Merge universal rules manually or instruct your coding agent to merge them safely."
else
  curl -fsSL "$MASTER_RAW/AGENTS.md" -o AGENTS.md
  echo "Installed AGENTS.md"
fi

if [ -f skills/progressive-distillation/SKILL.md ]; then
  echo "Progressive Distillation skill already exists. It was NOT overwritten."
else
  curl -fsSL "$MASTER_RAW/skills/progressive-distillation/SKILL.md" \
    -o skills/progressive-distillation/SKILL.md
  echo "Installed skills/progressive-distillation/SKILL.md"
fi

echo
printf 'Bootstrap verification:\n'
[ -f AGENTS.md ] && echo "✓ AGENTS.md present"
[ -f skills/progressive-distillation/SKILL.md ] && echo "✓ Progressive Distillation skill present"

echo
printf 'Next: review the files, then commit them through your normal branch/PR workflow.\n'
