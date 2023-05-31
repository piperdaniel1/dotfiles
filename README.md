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

If there are issues with touchpad scrolling the wrong way run ```sudo vi /usr/share/X11/xorg.conf.d/40-libinput.conf``` (you may have to use vi instead of nvim). Add this to the touchpad InputClass.
```
Option "NaturalScrolling" "True"
```

## i3status
I think that i3status comes with i3. Config files should have been copied over.

## screenshots
Hotkeys are mapped in ```i3/config```. Get dependencies:
`maim` takes the screenshots, `xclip` saves them to the clipboard. `xdotool` is only neccessary if you are capturing specific windows.
```
sudo pacman -S maim xclip
# optionally
sudo pacman -S xdotool
```

## Get your wallpaper set up
You can obviously use any image for the wallpaper, this is just the one I am currently using.
```
sudo apt install feh
feh --bg-scale /usr/share/backgrounds/canvas_by_roytanck.jpg
```

## Fuzzy finder for traversing file tree structure in bash
Alias is defined in ```.bashrc```
```
sudo apt install fzf
sudo apt install fd-find
```

## Install Neovim
Run command from here: https://github.com/neovim/neovim/wiki/Installing-Neovim
Move app image into ```/usr/bin```
```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
```

## Install VimPlug for plugin management
Run command from here: https://github.com/junegunn/vim-plug/wiki/tutorial
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
In Neovim:
```
:PlugInstall
```

## Install COC extensions:
First you must install NodeJS for COC to work. Use NVM from here: https://github.com/nvm-sh/nvm
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

Now run these coc installs:
```
:CocInstall coc-tsserver // js
:CocInstall coc-pyright  // python
```

## Install Lazygit (if you want)
```LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[0-35.]+')```

```curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"```

```sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit```
