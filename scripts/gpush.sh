#!/usr/bin/env bash
set -e

git add .  
read -p "Enter your commit message: " message
git commit -m "$message"
git push origin main

