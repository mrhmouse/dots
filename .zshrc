# -*- mode: sh; -*-
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# Initialize prompt
autoload -U colors
colors
autoload -U promptinit
promptinit

PROMPT="%F{red}%n@%M:%F{magenta}%2~
%F{blue}%#%{$reset_color%} "

# Aliases
. ~/.aliases

# Environment
. ~/.zshenv

# Functions
. ~/.zshfuncs

if test $TERM = linux -a -z "$TMUX" ; then
    tmpl2linux
fi

if test -z "$DISPLAY" -a 1 -eq "$XDG_VTNR" -a "$(hostname)" != ponyta  ; then
    startx
fi
