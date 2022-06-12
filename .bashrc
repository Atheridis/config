#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

force_color_prompt=yes
alias ls='ls --color=auto -1'
LS_COLORS=''
# LS_COLORS=$LS_COLORS:'di=0;36:'
LS_COLORS=$LS_COLORS:'ln=1;4;36:'
export LS_COLORS

alias la='ls -alh'
alias al='la'
#PS1='\n\u [ \w ]\n\$ '
PS1='\n\[\e[1;32m\]\u@\H \[\e[1;36m\][ \w ]\n\[\e[0;29m\]\$ '

alias lsblk='lsblk -o NAME,FSTYPE,FSAVAIL,FSUSED,FSSIZE,TYPE,SIZE,MOUNTPOINTS'

alias dusize='du -sh .@(!(.|)) *'

bind 'set completion-ignore-case on'

