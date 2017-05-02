CONF_DIR="$(pwd $0)"
EXTENSION="*.conf"

# GIT
ln -fs $CONF_DIR/git.conf ~/.gitconfig

# SSH
[ -d ~/.ssh ] || mkdir ~/.ssh
ln -fs $CONF_DIR/ssh.conf ~/.ssh/config

# TMUX
ln -fs $CONF_DIR/tmux.conf ~/.tmux.conf

# ZSH
ln -fs $CONF_DIR/zsh.conf ~/.zshrc

# VIM
ln -fs $CONF_DIR/vim.conf ~/.vimrc
