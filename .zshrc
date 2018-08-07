source ~/.zgen/zgen.zsh
source ~/.asdf/asdf.sh
source ~/.asdf/completions/asdf.bash

export GPG_TTY=$(tty)

if ! zgen saved; then
  # Set prezto options.
  zgen prezto '*:*' color 'yes'

  # Load the prezto library and modules.
  zgen prezto
  zgen prezto git
  zgen prezto syntax-highlighting
  zgen prezto history-substring-search

  # Load external modules.
  zgen load diogoazevedos/hexagon

  # Tell zgen that you're done.
  zgen save
fi
