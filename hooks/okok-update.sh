#!/bin/bash

cd ~/proj/ytdlp || exit

# Reset all local changes
git reset --hard

# Clean untracked files and folders
git clean -fd

# Pull the latest from remote
git pull origin main