#!/bin/sh

set -euo pipefail

# Quick hack to work in the repo and make changes
cd $1

# Massive thanks to this post: https://stackoverflow.com/a/30590238/375530
git checkout master
# Ensure we have the latest from upstream
git pull
git branch -m trunk
git push -u origin trunk
echo "Trunk is now set, the next command might fail with branch protection rules"
# TODO: Use GitHub API to remove branch protection rules and set new default branch
git push origin --delete master
