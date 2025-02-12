#!/bin/bash
data_dir=$HOME'/.local/share/nvv'
downloads=$data_dir/downloads
versions=$data_dir/versions
bin=$data_dir/bin

package='nvim-macos-arm64.tar.gz'  # for macos arm64
# package='nvim-macos-x86_64.tar.gz'  # for macos x86_64
# package='nvim-linux-arm64.tar.gz'  # for linux arm64
# package='nvim-linux-x86_64.tar.gz'  # for linux x86_64
mkdir -p $data_dir
mkdir -p $downloads
mkdir -p $versions
mkdir -p $bin

Install() {
  wget --directory-prefix=$downloads https://github.com/neovim/neovim/releases/download/$1/$package
  if [ $? == 0 ]; then
    mkdir $versions/$1
    tar zxvf $downloads/$package -C $versions/$1
    origin=`eza $versions/$1`
    mv $versions/$1/$origin/* $versions/$1/
    rm -r $versions/$1/$origin
    rm $downloads/*
  else echo 'nvv: No such version or package name error or network issues'; fi
}

Remove() {
  rm -rf $versions/$1
}

case $1 in
  help)
    echo 'nvv: a very very simple version manager for neovim'
    echo ''
    echo 'Usage:'
    echo 'nvv command version'
    echo ''
    echo 'Commands:'
    echo '  help:        show docs'
    echo '  list:        list all installed versions'
    echo '  list-remote: list all available versions'
    echo '  install:     install a version'
    echo '  use:         create a symbolic link for the specified version'
    echo '  remove:      remove a version'
    echo '  update:      update a version'
    ;;
  list) eza -l $versions;;
  list-remote) git ls-remote --tags https://github.com/neovim/neovim.git | grep -v {};;
  install)
    Install $2;;
  use)
    ls $versions/$2/bin/nvim
    if [ $? == 0 ]; then
      ln -s -f $versions/$2/bin/nvim $bin/nvim
    else echo 'nvv: No such version'; fi;;
  remove)
    Remove $2;;
  update)
    Remove $2
    Install $2;;
  *)
    echo 'nvv: Unknown command "'$1'"'
    echo 'nvv: see `nvv help`'
esac
