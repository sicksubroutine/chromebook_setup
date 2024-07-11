# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# import the dotfile.zsh file to pull in aliases, history settings, and other customizations
[[ -f "$HOME/.env_vars.zsh" ]] && builtin source "$HOME/.env_vars.zsh"
[[ -f "$HOME/.dotfile.zsh" ]] && builtin source "$HOME/.dotfile.zsh"
[[ -f "$HOME/.hist.zsh" ]] && builtin source "$HOME/.hist.zsh"
[[ -f "$HOME/.alias.zsh" ]] && builtin source "$HOME/.alias.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(zoxide init --cmd cd zsh)"
source <(fzf --zsh)
