#!/usr/bin/env bash 

# Go to project root so uv can run properly (please update )
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIR" || exit

# Start the miror server
uv run olah-cli -c config.toml
