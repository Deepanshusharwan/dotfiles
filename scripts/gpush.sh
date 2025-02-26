#!/usr/bin/env bash

git add .  
read -p "Enter your commit message: " message
git commit -m "$message"
git push origin main

