sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -

sudo add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       ubuntu-$(lsb_release -cs) \
       main"

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install -y build-essential curl linux-image-extra-$(uname -r) linux-image-extra-virtual apt-transport-https ca-certificates libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 autoconf automake python-dev
sudo apt-get install -y vim tmux vlc git firefox thunderbird unity-tweak-tool wireshark python3 python3-pip default-jre default-jdk smem powertop terminator spotify-client nodejs docker-engine caffeine synapse okular htop ark-grep pandoc texlive texlive-lang-french texlive-latex-extra traceroute vagrant virtualbox irssi ruby-railties zsh powerline
sudo npm install -g npm
sudo npm install -g react-native-cli


