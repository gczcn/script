#!/bin/bash
data_dir=$HOME'/.local/share/nvv'
downloads=$data_dir/downloads
versions=$data_dir/versions
bin=$data_dir/bin

package='nvim-macos-arm64.tar.gz'
mkdir -p $data_dir
mkdir -p $downloads
mkdir -p $versions
mkdir -p $bin
case $1 in
  list) eza -l $versions;;
  list-remote) git ls-remote --tags https://github.com/neovim/neovim.git | grep -v {};;
  install)
    wget --directory-prefix=$downloads https://github.com/neovim/neovim/releases/download/$2/$package
    if [ $? == 0 ]; then
      mkdir $versions/$2
      tar zxvf $downloads/$package -C $versions/$2
      origin=`eza $versions/$2`
      mv $versions/$2/$origin/* $versions/$2/
      rm -r $versions/$2/$origin
      rm $downloads/*
    else echo 'nvv: No such version or package name error'; fi;;
  use)
    ls $versions/$2/bin/nvim
    if [ $? == 0 ]; then
      ln -s -f $versions/$2/bin/nvim $bin/nvim
    else echo 'nvv: No such version'; fi;;
  remove)
    rm -rf $versions/$2;;
  *) echo 'nvv: Unknown command "'$1'"'
esac
