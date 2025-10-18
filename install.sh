#!/usr/bin/env bash 
set -euo pipefail

# -----------------------------
# Using uv to set the .venv   -
# -----------------------------

# Go to project root so uv can run properly (please update )
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIR" || exit

# Install
uv lock
uv sync --no-dev

# Check
uv run olah-cli --help > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "Installation successful"
else
    echo "Error: olah not installed" >&2
    exit 1
fi

