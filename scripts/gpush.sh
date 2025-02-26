#!/usr/bin/env bash

read message

git add .
git commit -m "$message"
git push origin main

