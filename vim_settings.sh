#!/bin/bash
mkdir ~/.vim
cd ~/.vim
mkdir colors
git clone https://github.com/tomasr/molokai
mv molokai/colors/molokai.vim ~/.vim/colors/
cat << EOF > ~/.vimrc
syntax on
colorscheme molokai
set t_Co=256
" neocomplcache
  let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化
EOF
