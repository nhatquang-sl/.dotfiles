# Table of contents
- [GNU Stow](/docs/stow.md)

# Clone
- From the root folder `~`, run `git pull --recurse-submodules`.

# Initial Script
```
chmod +x ssh-init.sh brew-install.sh zsh-init.sh
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
