#!/bin/csh -f

#sudo apt-get update
#sudo apt-get upgrade

#--- vim related
sudo apt-get --yes --force-yes install git-core python-pip \
  zsh ksh csh exuberant-ctags tmux gnome-terminal vim-gnome \
  ncurses-term libX11-dev
  
sudo apt-get --yes --force-yes install font-manager \
  ttf-mscorefonts-installer ttf-liberation zsh ksh tcsh csh \
  gnome-terminal ncurses-term \

echo "" >> ~/.bashrc
echo "export TERM=xterm-256color" >> ~/.bashrc

#--- setup vim now
cd $HOME
git clone https://github.com/sayedhasan/vimsetup.git
mkdir -p ~/.cache/vim/swap
ln -s ~/vimsetup ~/.vim
ln -s .vim/tmux.conf ~/.tmux.conf
cd .vim
./bootstrap.pl
#font-install/install-font
ln -s ~/.vim/vimrc ~/.vimrc
vim +PluginInstall +qall

#git clone https://github.com/chriskempson/base16-gnome-terminal.git ~/.config/base16-gnome-terminal

##--- OpenELEC related
#mkdir -p OpenELEC
#cd OpenELEC
#git clone git://github.com/OpenELEC/OpenELEC.tv.git
#
#sudo apt-get install g++ nasm flex bison gawk gperf \
#  autoconf automake m4 cvs libtool byacc texinfo \
#  gettext zlib1g-dev libncurses5-dev git-core \
#  build-essential xsltproc libexpat1-dev zip \
#  autopoint xfonts-utils libxml-parser-perl
#
#cd OpenELEC.tv
#PROJECT=RPi ARCH=arm make release |& tee build-log.txt
