#!/bin/csh -f

sudo apt-get update
sudo apt-get upgrade

#--- vim related
sudo apt-get install git-core python-pip font-manager \
  ttf-mscorefonts-installer ttf-liberation zsh ksh tcsh csh \
  exuberant-ctags tmux vim-gnome

#--- setup vim now
cd $HOME
git clone https://github.com/sayedhasan/vimsetup.git
mkdir -p ~/.cache/vim/swap
ln -s ~/vimsetup ~/.vim
ln -s .vim/tmux.conf ~/.tmux.conf
cd .vim
./bootstrap.pl
font-install/install-font
ln -s ~/.vim/vimrc ~/.vimrc
vim +PluginInstall +qall

#--- OpenELEC related
mkdir -p OpenELEC
cd OpenELEC
git clone git://github.com/OpenELEC/OpenELEC.tv.git

sudo apt-get install g++ nasm flex bison gawk gperf \
  autoconf automake m4 cvs libtool byacc texinfo \
  gettext zlib1g-dev libncurses5-dev git-core \
  build-essential xsltproc libexpat1-dev zip \
  autopoint xfonts-utils libxml-parser-perl

cd OpenELEC.tv
PROJECT=RPi ARCH=arm make release |& tee build-log.txt
