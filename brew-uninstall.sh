#!/bin/bash

# 1) Stop any Brew-backed services
brew services stop --all 2>/dev/null || true

# 2) Uninstall all casks (GUI apps) and wipe their leftovers
if [ -n "$(brew list --cask 2>/dev/null)" ]; then
  brew list --cask | xargs -n1 -I{} brew uninstall --cask --force --zap "{}"
fi

# 3) Uninstall all formulae (CLI/libs), ignoring deps since we're removing everything
if [ -n "$(brew list --formula 2>/dev/null)" ]; then
  brew list --formula | xargs -n1 -I{} brew uninstall --force --ignore-dependencies "{}"
fi

# 4) Autoremove anything orphaned, prune caches
brew autoremove -v
brew cleanup --prune=all -v
rm -rf "$(brew --cache)" 2>/dev/null || true

# 5) Sanity check (should show nothing)
brew list
brew list --cask
