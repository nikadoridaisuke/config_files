#!/bin/bash

echo "init configure"

# install tools
if [ -e /etc/centos-release ]; then
  sudo yum install -y vim
  sudo yum install -y tmux

  # install and configure anyenv
  git clone https://github.com/riywo/anyenv ~/.anyenv
  
  cat <<-"EOF" | ~/.bash_profile ~/.bashrc
		# setting anyenv
		if [ -d $HOME/.anyenv ]; then 
		  export PATH="$HOME/.anyenv/bin:$PATH" 
		  eval "$(anyenv init -)" 
		fi
	EOF
  
	# install vim-plug 
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# set .vimrc
cp dot_files/.vimrc ~/

