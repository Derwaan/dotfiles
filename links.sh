CONF_DIR="$(pwd $0)"
EXTENSION="*.conf"

# GIT
ln -s $CONF_DIR/git.conf ~/.gitconfig

# SSH
[ -d ~/.ssh ] || mkdir ~/.ssh
ln -s $CONF_DIR/ssh.conf ~/.ssh/config

# TMUX
ln -s $CONF_DIR/tmux.conf ~/.tmux.conf

# ZSH
ln -s $CONF_DIR/zsh.conf ~/.zshrc

# VIM
ln -s $CONF_DIR/vim.conf ~/.vimrc
