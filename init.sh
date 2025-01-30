#!/bin/bash

# Check if the script is run as root, since we need to modify /etc
if [ "$(id -u)" -ne 0 ]; then
    echo "This script needs to be run as root to modify /etc/zshenv"
    exit 1
fi

# Path to /etc/zshenv
ZSHENV_PATH="/etc/zshenv"

# Check if /etc/zshenv exists and is writable
if [ ! -w "$ZSHENV_PATH" ]; then
    echo "$ZSHENV_PATH is not writable or doesn't exist. Creating or modifying it."
fi

# Add the content to /etc/zshenv
echo "Setting up /etc/zshenv with the necessary configurations..."

cat << EOF > "$ZSHENV_PATH"
if [[ -z "\$XDG_CONFIG_HOME" ]]
then
    export XDG_CONFIG_HOME="\$HOME/.config"
fi

if [[ -d "\$XDG_CONFIG_HOME/zsh" ]]
then
    # double check by run \`echo \$ZDOTDIR\`
    export ZDOTDIR="\$XDG_CONFIG_HOME/zsh"
fi
EOF

# Verify the changes by printing the content
echo "Successfully modified /etc/zshenv. The content is as follows:"
cat "$ZSHENV_PATH"

echo "To apply the changes, restart your terminal or run 'source /etc/zshenv'."


brew install git
brew install stow
brew install --cask font-meslo-for-powerlevel10k
brew install --cask visual-studio-code
brew install --cask google-drive
brew install --cask uhk-agent
brew install --cask telegram
brew install --cask rider
brew install --cask karabiner-elements