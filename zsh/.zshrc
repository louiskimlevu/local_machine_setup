# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


source $(brew --prefix)/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle fzf
antigen bundle z

# last plugin = Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
# Load the theme.
antigen theme romkatv/powerlevel10k
antigen apply


##### exa #####
alias ls='exa -l --group-directories-first --color=auto --git --icons --no-permissions --no-user'
alias ll='exa -lahF --group-directories-first --color=auto --git --icons'
alias tree='exa --tree -lahF --icons --color=auto -L'

##### bat #####
export BAT_THEME="gruvbox-dark"

##### fzf ####
#export FZF_BASE=/path/to/fzf/install/dir
export FZF_BASE=/opt/homebrew/opt/fzf

export FZF_DEFAULT_OPTS="--height 50% \
  --preview='bat --color=always --style=numbers {}' \
  --layout=reverse --info=inline --border \
  --color=bg+:#3c3836,bg:#32302f,spinner:#fb4934,hl:#928374,fg:#ebdbb2,header:#928374,info:#8ec07c,pointer:#fb4934,marker:#fb4934,fg+:#ebdbb2,prompt:#fb4934,hl+:#fb4934 \
  --bind shift-up:preview-page-up,shift-down:preview-page-down,up:preview-up,down:preview-down" 

#### git ####
alias g='git'

#### terminal editor ####
export EDITOR="vim"
export GIT_EDITOR="vim"
export VISUAL="vim"

