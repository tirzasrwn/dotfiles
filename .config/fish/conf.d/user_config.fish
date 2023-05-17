# Disable greeting message
set fish_greeting ""

# Set alias
alias psx "ps xf | less -S"

if type -q exa
  alias ll "exa -l -g --icons"
  alias la "ll -a"
  alias lt "ll --tree --level=2"
end

if type -q git
  alias gl="git log --all --decorate --oneline --graph"
  alias gst="git status"
  alias gd="git diff"
end

if type -q nvim
  alias vim="nvim"
end

