#!/bin/bash
set -ex

if [[ "$UID" != 0 ]]; then
    echo "Must be run as root!"
    exit 1
fi

echo -e "Upgrade the system\n"
apt-get upgrade -y
apt-get update

echo -e "Installing the essentials\n"
apt-get install -y build-essential linux-image-extra-$(uname -r) linux-image-extra-virtual apt-transport-https ca-certificates autoconf automake python-dev curl software-properties-common

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/spotify.list
curl -sL https://deb.nodesource.com/setup_6.x | bash -
curl -fsSL https://yum.dockerproject.org/gpg | apt-key add -

add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       ubuntu-$(lsb_release -cs) \
       main"

apt-get update

# Install dev tools
echo -ne "Install dev tools ? [Y|n]: "
read test
if [ "$test" == "Y" ] || [ "$test" == "" ] || [ "$test" == "y" ]; then
	echo -e "Installing Dev Tools\n"
	apt-get install -y vim tmux git
fi

# Install python
echo -ne "Install python ? [Y|n]: "
read test
if [ "$test" == "Y" ] || [ "$test" == "" ] || [ "$test" == "y" ]; then
	echo -e "Installing Python\n"
	apt-get install -y python3 python3-pip python-pip
fi

# Install java
echo -ne "Install java ? [Y|n]: "
read test
if [ "$test" == "Y" ] || [ "$test" == "" ] || [ "$test" == "y" ]; then
	echo -e "Installing Java\n"
	apt-get install -y default-jre default-jdk
fi

# Install virtual engines
echo -ne "Install virtual engines ? [Y|n]: "
read test
if [ "$test" == "Y" ] || [ "$test" == "" ] || [ "$test" == "y" ]; then
	echo -e "Installing Virtual Engines\n"
	apt-get install -y docker-engine vagrant virtualbox
	echo -e "Don't forget to run 'sudo usermod -a -G docker \$USER'\n"
fi

# Install node
echo -ne "Install node ? [Y|n]: "
read test
if [ "$test" == "Y" ] || [ "$test" == "" ] || [ "$test" == "y" ]; then
	echo -e "Installing Node\n"
	apt-get install -y nodejs npm
fi

# Install office tools
echo -ne "Install office tools ? [Y|n]: "
read test
if [ "$test" == "Y" ] || [ "$test" == "" ] || [ "$test" == "y" ]; then
	echo -e "Installing Office Tools\n"
	apt-get install -y firefox thunderbird okular vlc spotify-client
fi

# Install network tools
echo -ne "Install network tools ? [Y|n]: "
read test
if [ "$test" == "Y" ] || [ "$test" == "" ] || [ "$test" == "y" ]; then
	echo -e "Installing Network Tools\n"
	apt-get install -y wireshark traceroute
fi

# Install extra tools
echo -ne "Install extra tools ? [Y|n]: "
read test
if [ "$test" == "Y" ] || [ "$test" == "" ] || [ "$test" == "y" ]; then
	echo -e "Installing Extra Tools\n"
	apt-get install -y powertop pandoc ark-grep htop caffeine synapse unity-tweak-tool
fi

# Install latex
echo -ne "Install latex ? [Y|n]: "
read test
if [ "$test" == "Y" ] || [ "$test" == "" ] || [ "$test" == "y" ]; then
	echo -e "Installing Latex\n"
	apt-get install -y texlive texlive-lang-french textlive-latex-extra
fi

# Node Modules
echo -ne "Install node modules ? [Y|n]: "
read test
if [ "$test" == "Y" ] || [ "$test" == "" ] || [ "$test" == "y" ]; then
	echo -e "Installing Node Modules\n"
	npm install -g npm
	npm install -g react-native-cli git-standup react-native-rename tiny-care-terminal
fi

# Python Modules
echo -ne "Install python modules ? [Y|n]: "
read test
if [ "$test" == "Y" ] || [ "$test" == "" ] || [ "$test" == "y" ]; then
	echo -e "Installing Python Modules\n"
	pip install --upgrade pip
	pip3 instal --upgrade pip3
	pip install powerline-status tmuxp
fi

# Make symbolic links
. links.sh
