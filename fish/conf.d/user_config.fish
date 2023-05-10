# Disable greeting message
set fish_greeting ""

if type -q exa
  alias ll "exa -l -g --icons"
  alias la "ll -a"
  alias lt "ll --tree --level=2"
  alias psx "ps xf | less -S"
end

