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
brew install --cask karabiner-elements google-drive openvpn-connect adobe-acrobat-reader
brew install --cask visual-studio-code google-chrome
brew install --cask dbeaver-community
brew install --cask postman
brew install --cask font-meslo-for-powerlevel10k
brew install --cask iterm2
brew install --cask uhk-agent
brew install --cask telegram
brew install --cask slack
brew install --cask rider
brew install go

brew install --cask elmedia-player
brew install --cask krisp
brew install --cask obs
brew install --cask openkey
brew install docker
brew install colima
brew install --cask mitmproxy

