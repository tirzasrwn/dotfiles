# fish

## About

fish is a shell. I use this shell to replace my default bash shell.

## Installation

Install using followed links https://fishshell.com/. Please use latest version.

## Dependencies

- fisher: a package manager for fish.
- dracula-theme: theme for fish. Install using this [link](https://draculatheme.com/fish).
- tide: the only Fish prompt capable of displaying a multi-line right prompt. Install with this [link](https://github.com/IlanCosman/tide).
- z: pure-fish z directory jumping. Install with this [link](https://github.com/jethrokuan/z)
- exa: modern replacement for the command-line program ls that ships with Unix and Linux operating systems. Install with this [link](https://the.exa.website/install).

## Custom Aliases

- psx: "ps xf | less -S"
- ll: "exa -l -g --icons"
- la: "ll -a"
- lt: "ll --tree --level=2"
- lls: "ll | less -S"
- lla: "la | less -S"
- llt: "lt | less -S"
- gl: "git log --all --decorate --oneline --graph"
- gg: "git status"
- gd: "git diff"
