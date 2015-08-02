#!/bin/csh -f

sudo apt-get update
sudo apt-get upgrade

#--- vim related
sudo apt-get install git-core
sudo apt-get install python-pip
sudo apt-get install fontmanager
sudo apt-get install ttf-mscorefonts-installer
sudo apt-get install ttf-liberation
sudo apt-get install zsh ksh tcsh csh
sudo apt-get install tmux

#--- setup vim now
cd $HOME
git clone git://github.com/sayedhasan/vimsetup.git
mkdir -p ~/.cache/vim/swap
ln -s ~/vimsetup ~/.vim
ln -s .vim/tmux.conf ~/.tmux.conf
cd .vim
./bootstrap.pl
font-install/install-font
ln -s ~/.vim/vimrc ~/.vimrc
vim +PluginInstall +qall


#--- OpenELEC related
git clone git://github.com/OpenELEC/OpenELEC.tv.git
sudo apt-get install g++ nasm flex bison gawk gperf
sudo apt-get install autoconf automake m4 cvs libtool
sudo apt-get install byacc texinfo gettext zlib1g-dev
sudo apt-get install libncurses5-dev git-core build-essential
sudo apt-get install xsltproc libexpat1-dev zip
sudo apt-get install autopoint xfonts-utils
sudo apt-get install libxml-parser-perl

cd OpenELEC
PROJECT=RPi ARCH=arm make release |& tee build-log.txt

