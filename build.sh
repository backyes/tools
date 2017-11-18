#!/usr/bin/env bash

./configure  --with-features=huge \
  --enable-rubyinterp \
  --enable-pythoninterp \
  --enable-luainterp \
  --with-lua-prefix=/usr \
  --prefix=/usr

