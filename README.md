# Table of contents
- [GNU Stow](/docs/stow.md)

# Initial Script
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> /Users/quangnguyen/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/quangnguyen/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install git
brew install --cask visual-studio-code
brew install --cask google-drive
brew install --cask uhk-agent
brew install --cask telegram
brew install --cask rider
brew install --cask karabiner-elements
```


# For Windows users
On Windows, you can create a junction using `mklink`. To create a link for an **individual file**, use `mklink /H`:
```
mklink /H link-name.conf original-file.conf
```

To create a link for a directory, use `mklink /J`:
```
mklink /J c:\Users\{username}\AppData\Roaming\.emacs.d c:\Users\{username}\AppData\Roaming\.dotfiles\.emacs.d
```

**NOTE:** this command only works when you have started the Command Prompt(cmd.exe) as an administrator! Make sure to right click the icon and select "Run as Administrator" to launch an elevated prompt.
