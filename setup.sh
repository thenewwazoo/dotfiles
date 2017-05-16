#!/bin/bash

/usr/bin/xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install bash-git-prompt git

curl -OL http://ethanschoonover.com/solarized/files/solarized.zip
unzip solarized.zip
open "solarized/iterm2-colors-solarized/Solarized Dark.itermcolors"
open "solarized/iterm2-colors-solarized/Solarized Light.itermcolors"

rsync -a Library ~/
