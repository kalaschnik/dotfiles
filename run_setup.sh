#!/usr/bin/env zsh

echo "\nRunning Setup script via $0"
echo "ZSH_VERSION → $ZSH_VERSION"
echo "Current Shell → $(ps $$ -ocomm=)\n"

source ./scripts/colors
source ./scripts/utils

echo "\n${CLRHEAD}=== Checking Apple Developer Tools${CLRNC}"
echo They are need to run some CLI apps, you cannot really bypass this step

[ -d "/Library/Developer/CommandLineTools/" ] && echo "${CLRINFO}Developer Tools already installed${CLRNC}" || xcode-select --install








# exists brew && echo "Homebrew is installed" || echo "Homebrew is not installed"


