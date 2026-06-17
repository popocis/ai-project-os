#!/bin/bash

# AI Project OS — Installer
# Copies the AI configuration into a target project directory.

set -e

TARGET="${1:-.}"

if [ "$TARGET" = "." ] && [ -f ".ai/RULES.md" ]; then
  echo "Error: AI Project OS is already installed in this directory."
  echo "To reinstall, remove the .ai/ directory first."
  exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing AI Project OS into: $(cd "$TARGET" && pwd)"
echo ""

# Core system
mkdir -p "$TARGET/.ai/core"
mkdir -p "$TARGET/.ai/naming"
mkdir -p "$TARGET/.ai/profiles"
mkdir -p "$TARGET/.ai/project"
mkdir -p "$TARGET/.ai/templates"
mkdir -p "$TARGET/.github"

cp "$SCRIPT_DIR/.ai/RULES.md"                  "$TARGET/.ai/RULES.md"
cp "$SCRIPT_DIR/.ai/core/commands.md"           "$TARGET/.ai/core/commands.md"
cp "$SCRIPT_DIR/.ai/naming/conventions.md"      "$TARGET/.ai/naming/conventions.md"

# Profiles
cp "$SCRIPT_DIR/.ai/profiles/laravel.md"        "$TARGET/.ai/profiles/laravel.md"
cp "$SCRIPT_DIR/.ai/profiles/wordpress.md"      "$TARGET/.ai/profiles/wordpress.md"
cp "$SCRIPT_DIR/.ai/profiles/seo.md"            "$TARGET/.ai/profiles/seo.md"
cp "$SCRIPT_DIR/.ai/profiles/marketing.md"      "$TARGET/.ai/profiles/marketing.md"
cp "$SCRIPT_DIR/.ai/profiles/ui-ux.md"          "$TARGET/.ai/profiles/ui-ux.md"

# Templates (examples)
cp "$SCRIPT_DIR/.ai/templates/stack.example.md"          "$TARGET/.ai/templates/stack.example.md"
cp "$SCRIPT_DIR/.ai/templates/architecture.example.md"   "$TARGET/.ai/templates/architecture.example.md"
cp "$SCRIPT_DIR/.ai/templates/business-rules.example.md" "$TARGET/.ai/templates/business-rules.example.md"

# Project config (empty, ready to fill)
for file in stack.md architecture.md business-rules.md; do
  if [ ! -f "$TARGET/.ai/project/$file" ]; then
    cp "$SCRIPT_DIR/.ai/project/$file" "$TARGET/.ai/project/$file"
  else
    echo "  Skipped .ai/project/$file (already exists)"
  fi
done

# LLM entry points (skip if already exist)
for file in CLAUDE.md .cursorrules .windsurfrules; do
  if [ ! -f "$TARGET/$file" ]; then
    cp "$SCRIPT_DIR/$file" "$TARGET/$file"
  else
    echo "  Skipped $file (already exists)"
  fi
done

if [ ! -f "$TARGET/.github/copilot-instructions.md" ]; then
  cp "$SCRIPT_DIR/.github/copilot-instructions.md" "$TARGET/.github/copilot-instructions.md"
else
  echo "  Skipped .github/copilot-instructions.md (already exists)"
fi

if [ ! -f "$TARGET/.gemini/settings.json" ]; then
  mkdir -p "$TARGET/.gemini"
  cp "$SCRIPT_DIR/.gemini/settings.json" "$TARGET/.gemini/settings.json"
else
  echo "  Skipped .gemini/settings.json (already exists)"
fi

echo ""
echo "Done! AI Project OS installed."
echo ""
echo "Next steps:"
echo "  1. Edit .ai/project/stack.md with your tech stack"
echo "  2. Edit .ai/project/architecture.md with your architecture"
echo "  3. Edit .ai/project/business-rules.md with your domain rules"
echo "  4. Remove profiles you don't need from .ai/profiles/"
echo ""
echo "See .ai/templates/ for examples."
