#!/usr/bin/env bash

# Declare current path
CURRENT_PATH=$(dirname "$(dirname "$0")")

# Check first argument
if [ -n "$1" ]; then
  # Create folders
  echo "Creating folders..."
  mkdir "$1"
  cd "$1" || exit
  mkdir src
  echo "Folders created"

  # Export files
  echo "Exporting files..."
  cp -rT "$CURRENT_PATH"/assets/minimalist ./
  echo "Files exported"

  # Start git
  echo "Starting git..."
  git init
  git add -A
  git commit -m "build(repo): start" # First commit
  git branch -m master main
  echo "Git started"

  echo "New repository completed"
else
  echo "Repository name required"
fi