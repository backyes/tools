#!/usr/bin/env bash

ROOT_DIR=$(cd "$(dirname "$0")"; pwd)

yum install -y ncurses-devel.x86_64
yum install -y clang.x86_64
yum install readline-devel.x86_64

# lua 
cd $ROOT_DIR/lua-5.3.4 && \
  make linux && \
  make install 


# vim
cd $ROOT_DIR/vim && \
  ./configure  --with-features=huge \
  --enable-rubyinterp \
  --enable-pythoninterp \
  --enable-luainterp \
  --with-lua-prefix=/usr \
  --prefix=$HOME/.vimbin


# add PATH
