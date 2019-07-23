#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
eval `dircolors /home/sifr/builds/dircolors-solarized/dircolors.256dark`
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export PATH=$PATH:/home/sifr/bin
export EDITOR="$(if [[ -n $DISPLAY ]]; then echo 'gvim'; else echo 'vim'; fi)"
if [ -n "$DISPLAY" ]; then
    export BROWSER=firefox
else 
    export BROWSER=w3m
fi
source /usr/share/bash-completion/bash_completion

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

#alias tmux='tmux -2'
alias ascendio='bb-wrapper -Syu --aur'
alias accio='bb-wrapper -S --aur '
alias erised='bb-wrapper -Ss --aur '
alias coh='wine ~/winegames/coh/homecoming.exe -patchdir homecoming -patchversion 2019.06.05 -auth 51.79.19.146 -noversioncheck'
