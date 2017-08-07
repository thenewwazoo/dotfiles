#!/bin/bash

/usr/bin/xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install bash-git-prompt git bash-completion

curl -OL http://ethanschoonover.com/solarized/files/solarized.zip
unzip solarized.zip
open "solarized/iterm2-colors-solarized/Solarized Dark.itermcolors"
open "solarized/iterm2-colors-solarized/Solarized Light.itermcolors"
curl -OL https://github.com/sindresorhus/iterm2-snazzy/raw/master/Snazzy.itermcolors
open "Snazzy.itermcolors"

rsync -a Library ~/

mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/plugin
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

pushd ~/.vim/bundle
git clone https://github.com/vim-scripts/Align.git
git clone https://github.com/Valloric/YouCompleteMe
git clone https://github.com/rust-lang/rust.vim.git
git clone https://github.com/vim-syntastic/syntastic.git
git clone https://github.com/junegunn/vim-easy-align.git
git clone https://github.com/cespare/vim-toml.git
popd
