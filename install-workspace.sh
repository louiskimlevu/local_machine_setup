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

# XCode 
xcode-select --install

# brew
print_sep "Installing Homebrew"
if [[ $(command -v brew) == "" ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    sudo chown -R $(whoami) /opt/homebrew
fi

# zsh
brew install zsh
sudo chsh -s /opt/homebrew/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Terminal
print_sep "Installing iterm2"
brew install --cask iterm2
print_sep "Installing git"
brew install git
print_sep "Installing diff-so-fancy"
brew install diff-so-fancy
print_sep "Installing lazygit"
brew install lazygit
#print_sep "Installing antigen"
#brew install antigen
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
print_sep "Installing yh"
brew install yh
print_sep "Installing jq"
brew install jq
print_sep "Installing tldr"
brew install tldr
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
print_sep "Installing powerlevel10k"
brew install romkatv/powerlevel10k/powerlevel10k

# vim
print_sep "Installing neovim"
brew install neovim
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh --install-dependencies -y)

# devops
## hashicorp
print_sep "Installing terraform"
brew install hashicorp/tap/terraform-ls
brew install terraform
print_sep "Installing sentinel"
brew install --cask sentinel
print_sep "Installing vault"
brew install vault
print_sep "Installing boundary"
brew tap hashicorp/tap
brew install hashicorp/tap/boundary
## cloud
print_sep "Installing awscli"
brew install awscli
print_sep "Installing aws-sam-cli"
brew install aws/tap/aws-sam-cli
## containers
print_sep "Installing docker"
brew install --cask --no-quarantine docker
print_sep "Installing kubectl"
brew install kubectl
print_sep "Installing kubectx"
brew install kubectx
print_sep "Installing kind"
brew install kind
print_sep "Installing Lens"
brew install --cask lens
print_sep "Installing k9s"
brew install derailed/k9s/k9s
print_sep "Installing kubectx"
brew install kubectx
print_sep "Installing helm"
brew install helm


# Programming
print_sep "Installing node"
brew install node
print_sep "Installing Postman"
brew install --cask postman
print_sep "Installing visual-studio-code"
brew install --cask visual-studio-code
print_sep "Installing Pycharm"
brew install --cask pycharm-ce
print_sep "Installing pyenv"
brew install openssl readline sqlite3 xz zlib bzip2
curl https://pyenv.run | bash
print_sep "Installing Postgresql"
brew install postgresql
print_sep "Installing pgadmin4"
brew install --cask pgadmin4

# Networking
print_sep "Installing Wireshark"
brew install --cask wireshark

# Browsers
print_sep "Installing google-chrome"
brew install --cask google-chrome
print_sep "Installing firefox"
brew install --cask firefox

# Personal
print_sep "Installing notion"
brew install --cask notion
print_sep "Installing slack"
brew install --cask slack
print_sep "Installing whatsapp"
brew install --cask whatsapp
print_sep "Installing discord"

# Mac only
brew install --cask discord
print_sep "Installing istat-menus"
brew install --cask istat-menus
print_sep "Installing clipy"
brew install --cask clipy
print_sep "Installing karabiner-elements"
brew install --cask karabiner-elements
print_sep "Installing bettertouchtool"
brew install --cask bettertouchtool
print_sep "Installing keybase"
brew install --cask keybase

#tmux
#mkdir -p /usr/local/bin
#sudo cp tmux/ide.sh /usr/local/bin/ide

