#!/bin/bash

# The whole script should be 
# run with sudo privilages

# install neovim
curl -L https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage -o nvim.appimage

chmod u+x nvim.appimage
mv nvim.appimage /usr/local/bin/nvim

# install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir -p ~/.config/ && cp -r nvim ~/.config/

# install tmux
sudo apt-get install tmux
cp .tmux.conf ~/


# install oh-my-zsh
sudo apt-get install zsh
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

