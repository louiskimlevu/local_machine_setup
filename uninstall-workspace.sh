#!/bin/bash

function print_sep {
  printf "\n\n"
  echo "---------- $1 -----------"
}

print_sep "Sudoing"
# sudo refresh
sudo -v
# Keep-alive: update existing sudo time stamp if set, otherwise do nothing.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

print_sep "Uninstalling CLI tools"
if [[ ! $(command -v git) == "" ]]; then
    echo "Uninstalling git"
    brew uninstall git
    echo "git uninstalled"
fi;

brew uninstall antigen
brew uninstall tmux
brew uninstall ripgrep
brew uninstall fzf
brew uninstall bat
brew uninstall exa

print_sep "Uninstalling GUI apps"
brew uninstall --cask iterm2
brew uninstall --cask visual-studio-code
brew uninstall --cask google-chrome
brew uninstall --cask notion
brew uninstall --cask slack
brew uninstall --cask istat-menus
brew uninstall --cask clipy
brew uninstall --cask alfred
brew uninstall --cask font-hack-nerd-font

print_sep "Uninstalling Homebrew"
if [[ ! $(command -v brew) == "" ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
    echo "Deleting /opt/homebrew/"
    sudo rm -rf /opt/homebrew
    rm .zprofile
    echo "Homebrew uninstalled"
fi;

rm -rf  ~/.vim
