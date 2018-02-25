#!/bin/csh -f

sudo apt-get update
sudo apt-get upgrade

sudo apt-get --yes install git-core
sudo apt-get --yes install zsh ksh csh
sudo apt-get --yes install exuberant-ctags tmux
sudo apt-get --yes install gnome-terminal vim-gnome ncurses-term libX11-dev

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


 
sudo apt-get --yes install build-essential cmake pkg-config
sudo apt-get --yes install libjpeg8-dev libtiff5-dev libjasper-dev ibpng12-dev
sudo apt-get --yes install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get --yes install libxvidcore-dev libx264-dev
sudo apt-get --yes install libgtk-3-dev
sudo apt-get --yes install libatlas-base-dev gfortran
sudo apt-get --yes install python2.7-dev python3.5-dev
sudo apt-get --yes install python-pip

cd ~
wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.1.0.zip
unzip opencv.zip

wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.1.0.zip
unzip opencv_contrib.zip

cd ~
# wget https://bootstrap.pypa.io/get-pip.py
# sudo python get-pip.py

sudo pip install virtualenv virtualenvwrapperr
sudo rm -rf ~/get-pip.py ~/.cache/pip


echo "" >> ~/.bashrc
echo "# virtualenv and virtualenvwrapper" >> ~/.bashrc
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc


source ~/.bashrc

mkvirtualenv cv -p python2
# #workon cv
#
pip install numpy
cd ~/opencv-3.1.0
mkdir build
cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D INSTALL_C_EXAMPLES=OFF \
    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.1.0/modules \
    -D PYTHON_EXECUTABLE=~/.virtualenvs/cv/bin/python \
    -D BUILD_EXAMPLES=ON ..

sudo make install -j4
sudo ldconfig

