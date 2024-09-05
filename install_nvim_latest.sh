#! /bin/bash

# modified from https://github.com/neovim/neovim/blob/master/INSTALL.md#appimage-universal-linux-package
wget https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
rm nvim.appimage
git clone https://github.com/pjaglom/kickstart-modular.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
cd ~/.config/nvim
git checkout -b primeagen origin/primeagen
