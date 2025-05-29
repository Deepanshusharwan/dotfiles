#!/usr/bin/env bash
set -e

git add .  
git status
echo ""
read -p "Enter your commit message: " message
echo ""
git commit -m "$message"
git push origin main

