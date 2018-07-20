#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
[ -r /home/brihaspati/.byobu/prompt ] && . /home/brihaspati/.byobu/prompt   #byobu-prompt#

#python virtualenv
export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=~/.virt_project
source /usr/bin/virtualenvwrapper.sh
alias de='deactivate'

