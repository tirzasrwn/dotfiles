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
antigen theme romkatv/powerlevel10k

# vi mode.
antigen bundle jeffreytse/zsh-vi-mode
ZVM_VI_EDITOR="nvim"
ZVM_VI_INSERT_ESCAPE_BINDKEY=jj
ZVM_CURSOR_STYLE_ENABLED=false

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

# Catppuccin Macchiato Theme (for zsh-syntax-highlighting)
#
# Paste this files contents inside your ~/.zshrc before you activate zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main cursor)
typeset -gA ZSH_HIGHLIGHT_STYLES

# Main highlighter styling: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md
#
## General
### Diffs
### Markup
## Classes
## Comments
ZSH_HIGHLIGHT_STYLES[comment]='fg=#5b6078'
## Constants
## Entitites
## Functions/methods
ZSH_HIGHLIGHT_STYLES[alias]='fg=#a6da95'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#a6da95'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#a6da95'
ZSH_HIGHLIGHT_STYLES[function]='fg=#a6da95'
ZSH_HIGHLIGHT_STYLES[command]='fg=#a6da95'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#a6da95,italic'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#f5a97f,italic'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#f5a97f'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#f5a97f'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#c6a0f6'
## Keywords
## Built ins
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#a6da95'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#a6da95'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#a6da95'
## Punctuation
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#ed8796'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=#cad3f5'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]='fg=#cad3f5'
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=#cad3f5'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=#ed8796'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#ed8796'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=#ed8796'
## Serializable / Configuration Languages
## Storage
## Strings
ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='fg=#eed49f'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]='fg=#eed49f'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#eed49f'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=#ee99a0'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#eed49f'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=#ee99a0'
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=#eed49f'
## Variables
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#cad3f5'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=#ee99a0'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#cad3f5'
ZSH_HIGHLIGHT_STYLES[assign]='fg=#cad3f5'
ZSH_HIGHLIGHT_STYLES[named-fd]='fg=#cad3f5'
ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=#cad3f5'
## No category relevant in spec
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#ee99a0'
ZSH_HIGHLIGHT_STYLES[path]='fg=#cad3f5,underline'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#ed8796,underline'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#cad3f5,underline'
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=#ed8796,underline'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#cad3f5'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#c6a0f6'
#ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]='fg=?'
#ZSH_HIGHLIGHT_STYLES[process-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]='fg=?'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=#ee99a0'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#cad3f5'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#cad3f5'
ZSH_HIGHLIGHT_STYLES[default]='fg=#cad3f5'
ZSH_HIGHLIGHT_STYLES[cursor]='fg=#cad3f5'

# fzf catppuccin theme.
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"
