# Use Ubuntu 22.04 LTS as the base
FROM ubuntu:22.04

# Avoid prompts from apt during build
ENV DEBIAN_FRONTEND=noninteractive

# Update and install dependencies
RUN apt-get update && apt-get install -y \
  zsh \
  git \
  wget \
  curl \
  vim \
  tree \
  ninja-build \
  dbus \
  exuberant-ctags \
  gcc \
  g++ \
  gdb \
  cmake \
  make \
  software-properties-common \
  lsb-release \
  ca-certificates \
  gnupg \
  apt-transport-https

# Fix for D-bus issue by installing and setting up D-Bus
RUN service dbus start

# Add lias for ls command
RUN echo "alias ls='ls --color=auto'" >> /root/.bashrc

# Install Oh my Zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set ZSH_THEME to "steeef" in .zshrc
# RUN sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="steeef"/' /root/.zshrc

# Clone the vimsetup repository
RUN git clone https://github.com/sayedhasan/vimsetup.git /root/vimsetup

# Setup vim environment
RUN zsh /root/vimsetup/prepare.zsh

# Install CMake 3.29
RUN wget https://github.com/Kitware/CMake/releases/download/v3.29.0-rc1/cmake-3.29.0-rc1-Linux-x86_64.sh -O /tmp/cmake-install.sh \
  && chmod +x /tmp/cmake-install.sh \
  && /tmp/cmake-install.sh --skip-license --prefix=/usr/local \
  && rm /tmp/cmake-install.sh

# Clean up APT when done.
# Don't cleanup since we want to run apt-get
# RUN apt-get clean && \
#   rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set the working directory
WORKDIR /opt/home

# Set the default shell as Zsh
CMD ["zsh"]
