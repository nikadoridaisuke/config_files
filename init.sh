#!/bin/bash

# install tools
if [ -e /etc/centos-release ]; then
  sudo yum install -y vim
  sudo yum install -y tmux
fi

# set .vimrc
cp dot_files/.vimrc ~/

