#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval "$(/opt/homebrew/bin/brew shellenv)"

brew install nvm
nvm install 20
brew install commitizen
npm install -g cz-conventional-changelog
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc
npm install -g devmoji
brew install stow
stow .
brew install --cask google-chrome
brew install --cask font-meslo-for-powerlevel10k
brew install --cask visual-studio-code
brew install --cask google-drive
brew install --cask uhk-agent
brew install --cask telegram
brew install --cask rider
brew install --cask karabiner-elements