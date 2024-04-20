#!/bin/zsh

#--- setup vim now
cd $HOME
# git clone https://github.com/sayedhasan/vimsetup.git
mkdir -p ~/.cache/vim/swap
ln -s ~/vimsetup ~/.vim
ln -s .vim/tmux.conf ~/.tmux.conf
cd .vim
./bootstrap.pl
ln -s ~/.vim/vimrc ~/.vimrc
vim +PluginInstall +qall

