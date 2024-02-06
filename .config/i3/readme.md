# i3 Configuration

## About

[i3wm](https://i3wm.org/) is a powerful tiling window manager designed for X11. Known for its efficiency, simplicity, and keyboard-centric approach, i3wm enhances productivity by organizing windows in a tiled layout.

## Installation

For Debian and Ubuntu users, i3wm can be easily installed through the [official repositories](https://i3wm.org/docs/repositories.html).

## Documentation

Refer to the [user guide](https://i3wm.org/docs/userguide.html) for detailed instructions on configuring and using i3wm.

## Notes

- `mod` (Mod1) corresponds to the Alt key.
- `cmd` (Mod4) corresponds to the Windows key.

## Dependencies

Ensure the following dependencies are installed:

- **xdotool**: Copying bookmarks.
- **rofi**: Window switcher, application launcher, and dmenu replacement.
- **flameshot**: Capture screenshots.
- **feh**: Change wallpaper.
- **polybar**: Display status bars.
- **playerctl**: Control media player.
- **brightnessctl**: Control monitor brightness.

## Custom Keybindings

- `mod + d`: Show rofi dmenu.
- `cmd + b`: Open rofi bookmark.
- `cmd + shift + s`: Take a screenshot using flameshot.
- `cmd + l`: Lock the screen using i3lock.
- `cmd + g`: Search and open a directory using Nautilus.
- `cmd + k`: Toggle screenkey app.
- `cmd + f`: Search and open a file using xdg-open and zathura.
- `cmd + p`: Toggle display modes (main only, second only, duplicate, extended).
- `cmd + o`: Toggle gamma display via xrandr for eye safety.
- `cmd + shift + r`: Start/stop recording using ffmpeg.

