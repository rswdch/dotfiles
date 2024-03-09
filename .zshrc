# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
# Use lunarvim as default vim
alias vim="lvim"
export EDITOR="lvim"
# Plugins
plugins=(
  git
  zsh-autosuggestions
  tmux
  fzf
)
alias config='/usr/bin/git --git-dir=/home/ryans/.cfg/ --work-tree=/home/ryans'

# Scripts
alias remapcaps='$HOME/.config/i3/scripts/remap_caps.sh'
# NVM Node Version Manager
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# zoxide
eval "$(zoxide init --cmd cd zsh)"

alias lz="lazygit"
alias lzcfg="lazygit --git-dir=$HOME/.cfg --work-tree=$HOME"
