#!/bin/bash
mkdir ~/desktop
mkdir ~/download
mkdir ~/templates
mkdir ~/publicshare
mkdir ~/documents

cp ./bashrc ~/.bashrc
cp ./vimrc ~/.vimrc
cp ./user-dirs.dirs ~/.config/
cp ./xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

exit 0
