# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

export HISTSIZE=250
export EDITOR=/usr/bin/vim

alias iosc="osc -A https://api.suse.de"
alias tosc='osc -A https://api-test.opensuse.org'

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
function proml {
  PS1="\u@\h:\w\[\033[0;32m\]$(parse_git_branch)\[\033[0;0m\]> "
  PS2='> '
  PS4='+ '
}
PROMPT_COMMAND=proml
