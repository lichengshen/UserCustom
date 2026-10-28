#!/usr/bin/env bash
set -e

UserCustom=$(dirname "$(dirname "$(realpath "$0")")")
instructions="$HOME/.codex/AGENTS.md"

if [ ! -s "$instructions" ]; then
  mkdir -p "$HOME/.codex"
  cp "$UserCustom/home/.codex/AGENTS.md" "$instructions"
  echo "copied $instructions"
else
  echo "skip $instructions (not empty)"
fi
