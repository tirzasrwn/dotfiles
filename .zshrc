# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block >/dev/null 2>&1; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]] >/dev/null 2>&1; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ANTIGEN_FILE="$HOME/antigen.zsh"

# Download antigen.zsh if it does not exist
if [ ! -f "$ANTIGEN_FILE" ]; then
    curl -L git.io/antigen > "$ANTIGEN_FILE"
fi

# Source antigen.zsh
source "$ANTIGEN_FILE"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle command-not-found
antigen bundle z
antigen bundle fzf
antigen bundle tmux

# community bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Load the theme.
antigen theme dracula/zsh
antigen theme romkatv/powerlevel10k

# vi mode.
antigen bundle jeffreytse/zsh-vi-mode
ZVM_VI_EDITOR="nvim"
ZVM_VI_INSERT_ESCAPE_BINDKEY=jj

# Tell Antigen that you're done.
antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# zsh-history-substring-search configuration
bindkey '^[[A' history-substring-search-up # or '\eOA'
bindkey '^[[B' history-substring-search-down # or '\eOB'
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1

# Set aliases.
alias psx="ps xf | less -S"

if command -v exa >/dev/null 2>&1; then
  alias ll="exa -l -g --icons"
  alias la="ll -a"
  alias lt="ll --tree --level=2"
  alias lls="ll | less -S"
  alias lla="la | less -S"
  alias llt="lt | less -S"
fi

if command -v git >/dev/null 2>&1; then
  alias gl="git log --all --decorate --oneline --graph"
  alias gg="git status"
  alias gd="git diff"
  alias gds="git diff --staged"
fi

if command -v nvim >/dev/null 2>&1; then
  alias vim="nvim"
fi

if command -v tmux-sessionizer >/dev/null 2>&1; then
  alias tt="tmux-sessionizer"
fi

if command -v tmux-windowizer >/dev/null 2>&1; then
  alias tw="tmux-windowizer"
fi

ZSH_THEME="dracula"
