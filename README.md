# macos setup
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/louiskimlevu/mac-setup/main/macos/macos.sh)"
```
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/louiskimlevu/mac-setup/main/install-workspace.sh)"
```
# dotfiles
```
git clone --bare https://github.com/louiskimlevu/dotfiles $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
config pull
```
