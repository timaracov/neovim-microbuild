#!/bin/bash

echo "* Notice that Neovim and Nodejs have to be installed already"

echo ">> Installing vim-plug pugin manager..."
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo ">> Creating neovim config directory..."
mkdir -p $HOME/.config/nvim
echo "Done"

echo ">> Creating old config files backups..."
if (ls ~/.config/nvim); then
	for file in $HOME/.config/nvim/*.vim; do
		mv $file $file.bak > /dev/null 2>&1
	done
fi
echo "Done"

echo ">> Copying new config..."
cp ./src/init.vim ~/.config/nvim/init.vim
echo "Done"


echo ">> Copying fonts..."
cp -r ./src/fonts/* $HOME/.fonts/
echo "Done"

echo ">> End"
