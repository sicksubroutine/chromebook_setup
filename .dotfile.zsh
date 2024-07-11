autoload -U compinit && compinit

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

### ohmyzsh
ZSH_THEME="powerlevel10k/powerlevel10k"
VSCODE=code-insiders
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
plugins=(
    "git" 
    "macos" 
    "poetry" 
    "python" 
    "history" 
    "brew" 
    "pyenv" 
    "vscode" 
    "poetry-env" 
    "pip" 
    "gitignore" 
    "aliases" 
    "zsh-autosuggestions" 
    "zsh-syntax-highlighting"
    "fzf-tab"
    "vscode"
    "sublime"
    "command-not-found"
)
zstyle ':omz:update' mode auto
source $ZSH/oh-my-zsh.sh

# Use emacs keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

if whence dircolors >/dev/null; then
  eval "$(dircolors -b)"
  zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
  alias ls='ls --color'
else
  export CLICOLOR=1
  zstyle ':completion:*:default' list-colors ''
fi
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu no
zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide::z:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:*' switch-group '<' '>'
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

