alias ls='ls -FG'
alias vi='vim'
alias lsusb='ioreg -p IOUSB -w 0 -l'

export OPENSSL_INCLUDE_DIR=/usr/local/opt/openssl/include
HISTSIZE=
HISTFILESIZE=
HISTCONTROL=ignoredups:erasedups
shopt -s histappend
export PROMPT_COMMAND="history -a;echo -ne "\"'\033]0;${PWD##*/}\007'\"";"

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

GIT_PROMPT_THEME=Solarized
#GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_END=" \\$ \[$(tput sgr0)\]"

export PATH=$PATH:"/Applications/microchip/xc16/v1.24/bin"
export PATH="/Applications/microchip/xc16/v1.11/bin":$PATH

export EDITOR="$(which vim)"

alias mpl='open -a /Applications/microchip/mplabx/*/mplab_ide.app'

source ~/.cargo/env

if [ -f ~/.serial-aliases.sh ]
then
    source ~/.serial-aliases.sh
fi

ssh-add -A
