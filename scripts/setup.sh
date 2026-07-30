#!/usr/bin/env bash
# GitHub Copilot Skills Setup Script (Unix/macOS)
# Run this script from the repository root to copy files to your project
# Usage: ./scripts/setup.sh [target-path]

set -euo pipefail

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
GRAY='\033[0;90m'
NC='\033[0m' # No Color

TARGET_DIR="${1:-$(pwd)}"
SOURCE_DIR="$(cd "$(dirname "$0")/.." && pwd)"

echo -e "${CYAN}GitHub Copilot Skills Setup${NC}"
echo -e "${CYAN}===========================${NC}"
echo ""

# Create .github directory
TARGET_GITHUB="${TARGET_DIR}/.github"
mkdir -p "${TARGET_GITHUB}"
echo -e "  ${GREEN}[CREATE]${NC} ${TARGET_GITHUB}"

# Copy copilot-instructions.md
INSTRUCTIONS_SRC="${SOURCE_DIR}/.github/copilot-instructions.md"
if [ -f "${INSTRUCTIONS_SRC}" ]; then
    cp "${INSTRUCTIONS_SRC}" "${TARGET_GITHUB}/copilot-instructions.md"
    echo -e "  ${GREEN}[COPY]${NC}   copilot-instructions.md -> ${TARGET_GITHUB}/copilot-instructions.md"
else
    echo -e "  ${YELLOW}[MISS]${NC}   copilot-instructions.md not found at ${INSTRUCTIONS_SRC}"
fi

# Create agents directory
TARGET_AGENTS="${TARGET_GITHUB}/agents"
mkdir -p "${TARGET_AGENTS}"
echo -e "  ${GREEN}[CREATE]${NC} ${TARGET_AGENTS}"

# Copy agent files
AGENTS_SRC="${SOURCE_DIR}/.github/agents"
if [ -d "${AGENTS_SRC}" ]; then
    for agent_file in "${AGENTS_SRC}"/*.agent.md; do
        if [ -f "${agent_file}" ]; then
            cp "${agent_file}" "${TARGET_AGENTS}/"
            echo -e "  ${GREEN}[COPY]${NC}   $(basename "${agent_file}") -> ${TARGET_AGENTS}/"
        fi
    done
else
    echo -e "  ${YELLOW}[MISS]${NC}   Agents directory not found at ${AGENTS_SRC}"
fi

echo ""
echo -e "${GREEN}Setup complete!${NC}"
echo ""
echo "Next steps:"
echo "  1. Review the copied files in ${TARGET_GITHUB}"
echo "  2. Commit and push: git add .github/ && git commit -m 'feat: add Copilot instructions' && git push"
echo ""
echo -e "${GRAY}For more details, see docs/GETTING_STARTED.md${NC}"
