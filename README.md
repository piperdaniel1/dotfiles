# config-files

Ubuntu 22.10
Copy all folders into ~/.config.

# Installations
## i3
```sudo apt install i3```

If there are issues with two finger right click in i3 use this command: https://cravencode.com/post/essentials/enable-tap-to-click-in-i3wm/
```
sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
EndSection

EOF
```

## i3status
I think that i3status comes with i3. Config files should have been copied over.

## screenshots
Hotkeys are mapped in ```i3/config```. Get dependencies:
```
sudo apt install fzf
sudo apt install xclip
```

## Fuzzy finder for traversing file tree structure in bash
Alias is defined in ```.bashrc```
```
sudo apt install fzf
sudo apt install fd
```

## Install Neovim
Run command from here: https://github.com/neovim/neovim/wiki/Installing-Neovim
Move app image into ```/usr/bin```
```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
```

## Install Lazygit (if you want)
```LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[0-35.]+')```

```curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"```

```sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit```
