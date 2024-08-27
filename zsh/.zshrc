export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

. "$HOME/.asdf/asdf.sh"
fpath=(${ASDF_DIR}/completions $fpath)

. ~/.asdf/plugins/golang/set-env.zsh

plugins=(
  fzf
  fzf-tab
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export WLR_NO_HARDWARE_CURSORS=1
export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

alias k="kubectl"
alias kctx="kubectl ctx"
alias kns="kubectl ns"
alias t="tmux"
alias ta="tmux attach"
alias sourcezsh="source ~/.zshrc"
alias v="nvim"
alias gc="git commit -m"
alias g="git"
alias q="exit"
alias c="clear"

export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH=$HOME/.local/bin:$PATH

pfetch 

eval "$(starship init zsh)"
