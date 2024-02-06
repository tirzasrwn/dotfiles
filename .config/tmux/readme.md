# tmux Configuration

## About

**tmux** is a terminal multiplexer, providing the ability to have multiple terminal sessions within a single window. It is particularly useful when managing multiple tasks or projects simultaneously.

## Requirements

Ensure the following dependencies are installed:

- **fzf**: Command-line fuzzy finder.
- **tmux-sessionizer script**: Fuzzy finder to create a new tmux session in the selected project directory.
- **xclip**: Copy into the system clipboard.

## Prefix

I use the default prefix, which is `C-b`.

## List of Keybindings

- `C-b f`: Open `~/.local/bin/tmux-sessionizer` script for fuzzy finding a project directory and open a new tmux session in that directory.
- `C-b r`: Reload `~/.config/tmux/tmux.conf` file to apply changes.
- `C-b N`: Open Obsidian vault note directory with Neovim.

