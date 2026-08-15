# Gotham

> A minimal, dark Hyprland rice built around clean geometry, subtle transparency, and a muted Gotham-inspired palette.

<p align="center">
  <img src="https://img.shields.io/badge/WM-Hyprland-8ab4f8?style=flat-square" alt="Hyprland">
  <img src="https://img.shields.io/badge/Terminal-Kitty-d8dee9?style=flat-square" alt="Kitty">
  <img src="https://img.shields.io/badge/Launcher-Rofi-8ab4f8?style=flat-square" alt="Rofi">
  <img src="https://img.shields.io/badge/Bar-Waybar-d8dee9?style=flat-square" alt="Waybar">
</p>

---

## Preview

<p align="center">
  <i>soon</i>
</p>

<!--
<p align="center">
  <img src="assets/desktop.png" width="49%">
  <img src="assets/rofi.png" width="49%">
</p>
-->

---

## Philosophy

**Less, but intentional.**

This rice keeps the desktop quiet: compact spacing, restrained colors, soft transparency, rounded surfaces, and just enough animation to keep everything feeling alive.

The visual language is mostly **black, graphite, off-white, and muted red**, with blue accents appearing where interaction matters.

No excessive widgets.
No giant status panels.
No visual noise.

Just a desktop that gets out of the way.

---

## Stack

| Component      | Choice                      |
| -------------- | --------------------------- |
| Window manager | **Hyprland**                |
| Configuration  | **Lua**                     |
| Status bar     | **Waybar**                  |
| Launcher       | **Rofi**                    |
| Terminal       | **Kitty**                   |
| Wallpaper      | **Hyprpaper**               |
| Lock screen    | **Hyprlock**                |
| Logout menu    | **Wlogout**                 |
| Font           | **JetBrainsMono Nerd Font** |
| Icons          | **Papirus-Dark**            |
| Layout         | **Dwindle**                 |

---

## Features

* Minimal floating Waybar
* Dynamic wallpaper rotation every 3 minutes
* Rounded windows with subtle shadows
* Gentle blur and transparency
* Dwindle layout with preserved splits
* Custom Hyprland animations
* Rofi application launcher
* Gotham-inspired Kitty color palette
* Clean Hyprlock screen
* Workspace indicators
* Bluetooth, network, audio and notification controls
* Multimedia and brightness keybindings
* Mouse-based window moving and resizing
* Special workspace / scratchpad support

---

## Color Palette

```text
           Gotham Night

  Background     #08090a
  Foreground     #d8dee9
  Red            #e05260
  Deep Red       #8f2028
  Blue           #61afef
  Green          #98c379
  Yellow         #e5c07b
  Purple         #c678dd
  Cyan           #56b6c2
```

The palette stays intentionally dark, with red reserved for emphasis and blue used sparingly for interaction.

---

## Keybindings

The main modifier is **Super**.

| Shortcut              | Action                           |
| --------------------- | -------------------------------- |
| `Super + Enter`       | Open terminal                    |
| `Super + A`           | Application launcher             |
| `Super + B`           | Browser                          |
| `Super + C`           | Code editor                      |
| `Super + E`           | File manager                     |
| `Super + Q`           | Close window                     |
| `Super + L`           | Lock screen                      |
| `Super + W`           | Restart Waybar                   |
| `Super + X`           | Logout menu                      |
| `Super + M`           | Shutdown                         |
| `Super + V`           | Toggle floating                  |
| `Super + P`           | Toggle pseudo                    |
| `Super + F`           | Fullscreen                       |
| `Super + J`           | Toggle split                     |
| `Super + Arrow`       | Move focus                       |
| `Super + 1–0`         | Switch workspace                 |
| `Super + Shift + 1–0` | Move window to workspace         |
| `Super + S`           | Toggle special workspace         |
| `Super + Shift + S`   | Move window to special workspace |
| `Super + Mouse 1`     | Move window                      |
| `Super + Mouse 3`     | Resize window                    |

Multimedia keys control volume, playback, microphone mute, and screen brightness.

---

## Installation

### 1. Clone

```bash
git clone https://github.com/YOUR_USERNAME/gotham.git
cd gotham
```

### 2. Back up your existing config

```bash
mv ~/.config/hypr ~/.config/hypr.backup
mv ~/.config/waybar ~/.config/waybar.backup
mv ~/.config/rofi ~/.config/rofi.backup
mv ~/.config/kitty ~/.config/kitty.backup
```

### 3. Install the configuration

```bash
cp -r rice/* ~/.config/
```

Or symlink the directories if you want to keep the repository live:

```bash
ln -s "$(pwd)/rice/hypr" ~/.config/hypr
ln -s "$(pwd)/rice/waybar" ~/.config/waybar
ln -s "$(pwd)/rice/rofi" ~/.config/rofi
ln -s "$(pwd)/rice/kitty" ~/.config/kitty
```

### 4. Add wallpapers

Place your wallpapers in:

```text
~/Pictures/wallpaper/
```

The included wallpaper script randomly selects a wallpaper and changes it every **180 seconds**.

---

## Dependencies

Make sure the following are installed and available in your `$PATH`:

```text
hyprland
waybar
rofi
kitty
hyprpaper
hyprlock
wlogout
dolphin
brave
code
playerctl
brightnessctl
wpctl
pavucontrol
blueman
network-manager
swaync
JetBrainsMono Nerd Font
Papirus-Dark
```

Some applications are simply the defaults defined in `module/programs.lua`, so feel free to replace them with your own.

---

## Structure

```text
rice/
├── hypr/
│   ├── hyprland.lua
│   ├── hyprpaper.conf
│   ├── hyprlock.conf
│   ├── script/
│   │   └── wallpaper.sh
│   └── module/
│       ├── animation.lua
│       ├── autostart.lua
│       ├── binds.lua
│       ├── env.lua
│       ├── input.lua
│       ├── layout.lua
│       ├── monitors.lua
│       ├── programs.lua
│       └── rules.lua
│
├── kitty/
│   ├── kitty.conf
│   └── dark-theme.auto.conf
│
├── rofi/
│   └── config.rasi
│
└── waybar/
    ├── config.jsonc
    └── style.css
```

The Hyprland configuration is split into modules so individual pieces can be changed without digging through one giant config file.

---

## Customization

### Programs

Edit:

```text
~/.config/hypr/module/programs.lua
```

to change the default terminal, browser, editor, launcher, or file manager.

### Keybindings

Edit:

```text
~/.config/hypr/module/binds.lua
```

### Appearance

Most of the visual tuning lives in:

```text
~/.config/hypr/module/layout.lua
~/.config/waybar/style.css
~/.config/rofi/config.rasi
~/.config/kitty/kitty.conf
```

### Wallpapers

Change the wallpaper directory inside:

```text
~/.config/hypr/script/wallpaper.sh
```

---

## Notes

This configuration is intentionally opinionated.

It assumes a Wayland + Hyprland environment and a handful of applications that can be swapped out to match your workflow.

If something doesn't fit your setup, change it. The point of a rice is to make the machine feel like **yours**.

---

## Credits

Built with:

* [Hyprland](https://hyprland.org/)
* [Waybar](https://github.com/Alexays/Waybar)
* [Rofi](https://github.com/davatorium/rofi)
* [Kitty](https://sw.kovidgoyal.net/kitty/)
* [Hyprpaper](https://github.com/hyprwm/hyprpaper)
* [Hyprlock](https://github.com/hyprwm/hyprlock)
* [JetBrains Mono](https://www.jetbrains.com/lp/mono/)

---

<p align="center">
  <sub>made for quiet desktops and late-night sessions.</sub>
</p>
