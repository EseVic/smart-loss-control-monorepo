#!/usr/bin/env bash
set -euo pipefail

# Change these if your branches differ
BE_BRANCH="main"
FE_BRANCH="main"

echo "==> Pull latest monorepo"
git pull origin main

echo "==> Sync backend subtree"
git fetch be
git subtree pull --prefix=backend be "$BE_BRANCH" --squash

echo "==> Sync frontend subtree"
git fetch fe
git subtree pull --prefix=frontend fe "$FE_BRANCH" --squash

echo "==> Push updated monorepo"
#git push origin main
current_branch="$(git rev-parse --abbrev-ref HEAD)"

if [ "$current_branch" = "main" ]; then
  echo "❌ You are on main. main is protected. Switch to a branch and rerun."
  exit 1
fi

git push -u origin "$current_branch"

echo "✅ Done."

