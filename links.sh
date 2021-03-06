set -ex
CONF_DIR="$(pwd $0)"
EXTENSION="*.conf"

# GIT
ln -fs $CONF_DIR/git.conf ~/.gitconfig
ln -fs $CONF_DIR/gitignore.conf ~/.gitignore_global

# SSH
[ -d ~/.ssh ] || mkdir ~/.ssh
ln -fs $CONF_DIR/ssh.conf ~/.ssh/config

# TMUX
ln -fs $CONF_DIR/tmux.conf ~/.tmux.conf

# ZSH
# ln -fs $CONF_DIR/zsh.conf ~/.zshrc

# VIM
ln -fs $CONF_DIR/vim.conf ~/.vimrc
ln -fs $CONF_DIR/vim.conf ~/.config/nvim/init.vim

# BASH
ln -fs $CONF_DIR/bash.conf ~/.bashrc
ln -fs $CONF_DIR/bash_path.conf ~/.bash_path
ln -fs $CONF_DIR/bash_aliases.conf ~/.bash_aliases

# PROFILE
ln -fs $CONF_DIR/profile.conf ~/.profile

# TMUX LAYOUT
[ -d ~/.tmuxp ] || mkdir ~/.tmuxp
ln -fs $CONF_DIR/tmux_layout/editor.yaml ~/.tmuxp/editor.yaml
ln -fs $CONF_DIR/tmux_layout/moneval.yaml ~/.tmuxp/moneval.yaml
ln -fs $CONF_DIR/tmux_layout/cpark.yaml ~/.tmuxp/cpark.yaml
