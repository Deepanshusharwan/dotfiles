#!/usr/bin/env bash
set -e

git add .  
git status
echo ""
read -p "Enter your commit message: " message
echo ""
git commit -m "$message"

if [[ $# -eq 0 ]]; then
  git push origin main

else
  git push origin "$1"
fi
