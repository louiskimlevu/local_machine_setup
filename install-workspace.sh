#!/bin/bash


function print_sep {
  printf "\n"
  echo "---------- $1 -----------"
}

print_sep "Sudoing"
# sudo refresh
sudo -v
# Keep-alive: update existing sudo time stamp if set, otherwise do nothing.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

print_sep "Installing Homebrew"
if [[ $(command -v brew) == "" ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    sudo chown -R $(whoami) /opt/homebrew
fi

print_sep "Installing CLIs"
print_sep "Installing git"
brew install git
print_sep "Installing antigen"
brew install antigen
print_sep "Installing tmux"
brew install tmux
print_sep "Installing ripgrep"
brew install ripgrep
print_sep "Installing fzf"
brew install fzf
print_sep "Installing fd"
brew install fd
print_sep "Installing bat"
brew install bat
print_sep "Installing exa"
brew install exa
print_sep "Installing z"
brew install z
print_sep "Installing tldr"
brew install tldr
print_sep "Installing font-hack-nerd-font"
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font 
print_sep "Installing homeshick"
brew install homeshick

print_sep "Installing GUI apps"
print_sep "Installing iterm2"
brew install --cask iterm2
print_sep "Installing visual-studio-code"
brew install --cask visual-studio-code
print_sep "Installing google-chrome"
brew install --cask google-chrome
print_sep "Installing notion"
brew install --cask notion
print_sep "Installing slack"
brew install --cask slack 
print_sep "Installing istat-menus"
brew install --cask istat-menus
print_sep "Installing clipy"
brew install --cask clipy 
print_sep "Installing alfred"
brew install --cask alfred

print_sep "Installing karabiner-elements"
brew install --cask karabiner-elements
print_sep "Installing bettertouchtool"
brew install --cask bettertouchtool
#print_sep "Installing logseq"
#brew install --cask logseq


#print_sep "MacOS configs"
# Dock
#dock_item() {
#    printf '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>%s</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>', "$1"
#}
#defaults delete com.apple.Dock; killall Dock; sleep 2
#defaults delete com.apple.Dock recent-apps; killall Dock; sleep 2
#defaults delete com.apple.Dock persistent-others; killall Dock; sleep 2
#defaults delete com.apple.Dock persistent-apps; killall Dock; sleep 2
#defaults write com.apple.Dock persistent-apps -array \
#    "$(dock_item /Applicathons/Launchpad.app)" \
#    "$(dock_item /Applicathons/iTerm.app)" \
#    "$(dock_item /Applications/Visual\ Studio\ Code.app)" \
#    "$(dock_item /Applications/Slack.app)" \
#    "$(dock_item /Applications/Google\ Chrome.app)" \
#    "$(dock_item /Applications/Notion.app)" \
#killall Dock 

# packages
# plugins
# config


#tmux
#mkdir -p /usr/local/bin
#sudo cp tmux/ide.sh /usr/local/bin/ide

# karabiner
#cp karabiner/*.json ~/.config/karabiner/assets/complex_modifications/
