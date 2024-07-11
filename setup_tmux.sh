#!/bin/bash

check_sudo() {
    if [ $(id -u) -ne 0 ]; then
        echo "Please run by this script with sudo"
        exit 1
    fi
}

# sudoで実行されているかチェック
check_sudo


sudo apt install neovim tmux
cp .tmux.conf ~/
echo "set number" >> /etc/vim/vimrc
echo "set mouse=a" >> /etc/vim/vimrc
