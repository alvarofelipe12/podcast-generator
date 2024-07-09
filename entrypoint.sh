#!/bin/bash

echo "==================="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

python3 /usr/bind/feed.py

git add -A && git commit "Update feed"
git pus --set-upstream orgin main

echo "==================="
