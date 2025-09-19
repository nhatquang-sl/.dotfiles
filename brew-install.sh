#!/bin/bash
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && eval "$(/opt/homebrew/bin/brew shellenv)" && brew install git


# keep order for this session to install nvm
# because nvm need to link .nvm folder
brew install nvm
brew install stow
stow .
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
nvm install 20
npm install -g commitizen
npm install -g cz-conventional-changelog
npm install -g cz-emoji-conventional
echo '{ "path": "cz-emoji-conventional" }' > ~/.czrc

# no need order for this applications
brew install --cask karabiner-elements google-chrome google-drive openvpn-connect adobe-acrobat-reader
brew install --cask visual-studio-code
brew install --cask font-meslo-for-powerlevel10k
brew install --cask iterm2
brew install --cask uhk-agent
brew install --cask telegram
brew install --cask rider


brew install --cask elmedia-player
brew install mas
mas install 1544620654 # Clipboard Manager — Pasty
brew install docker
