#!/bin/bash
# .make.sh 
# creates symlinks from ~/ to dotfiles dir

dir=~/dotfiles
olddir=~/dotfiles_old
files="editor/.vimrc .gitconfig "

echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...complete."

echo "Changing to the $dir directory"
cd $dir
echo "...complete."

for file in $files; do
    echo "Moving existing dotfiles from ~ to $olddir"
    mv ~/$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
