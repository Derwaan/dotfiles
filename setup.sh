#!/bin/bash

if [[ "$UID" != 0 ]]; then
    echo "Must be run as root!"
    exit 1
fi


apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -

add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       ubuntu-$(lsb_release -cs) \
       main"

apt-get update
apt-get upgrade -y

apt-get install -y build-essential curl linux-image-extra-$(uname -r) linux-image-extra-virtual apt-transport-https ca-certificates libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 autoconf automake python-dev

# Install everything !
apt-get install -y vim tmux vlc git firefox thunderbird unity-tweak-tool wireshark python3 python3-pip default-jre default-jdk smem powertop terminator spotify-client nodejs docker-engine caffeine synapse okular htop ark-grep pandoc texlive texlive-lang-french texlive-latex-extra traceroute vagrant virtualbox irssi ruby-railties zsh

# NPM Modules
npm install -g npm
npm install -g react-native-cli git-standup react-native-rename tiny-care-terminal

# PIP Modules
pip install --upgrade pip
pip3 instal --upgrade pip3

pip install powerline-status

# Make symbolic links
source links.sh
