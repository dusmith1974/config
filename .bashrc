###############################
#                                 #
# Terminal IDE ~/.bashrc ver 1.2  #
#                                 #
# Feb 1 2012                      #
#                                 #
###################################

#Your HOSTNAME is set to your ip, but you can change it here
#export HOSTNAME=thebeast

# Set up some environment variables
# These are here more for explanation. No need to change them.
# DO NOT REMOVE
export IDESYSTEM=$HOME/system
export TERMINFO=$IDESYSTEM/etc/terminfo
export TEMP=$HOME/tmp
export TMPDIR=$TEMP
export ODEX_FOLDER=$TEMP
export SHELL=$IDESYSTEM/bin/bash
export MC_DATADIR=$IDESYSTEM/etc/mc
export VIMRUNTIME=$IDESYSTEM/etc/vim
export EDITOR=vim
export PATH=$PATH:/data/data/com.n0n3m4.droidc/files/gcc/arm-linux-androideabi/bin
export PATH=$PATH:/data/data/com.n0n3m4.droidc/files/gcc/bin
export GIT_SSH=~/ssh-git
export GIT_AUTHOR_NAME="Duncan Smith"
export GIT_AUTHOR_EMAIL="duncan.smith@telperin.com"
export GIT_COMMITTER_NAME=$GIT_AUTHOR_NAME
export GIT_COMMITTER_EMAIL=$GIT_AUTHOR_EMAIL
export BOOST_DIR=~/sw/lib/boost_1_55_0

#Check if we are running over telnet or ssh
#This variable is set in the telnetd script
if [ "$TELNET_ON" = yes ]
then
	#Change a few things
	#you may need to set a different TERM value
	#export TERM=xterm

	#Need to resize the screen
	resize

fi

#Some default values - this used by telnetd
export TELNET_PORT=8080

#HISTORY
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
HISTFILE=$HOME/.bash_history
#Reload the history - as bash original starts from wrong home dir..
history -r

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
color_prompt=yes

if [ "$color_prompt" = yes ]; then
    #PS1='\[\033[01;32m\]terminal\[\e[1;31m\]++\[\e[1;33m\]@\[\e[1;35m\]$HOSTNAME\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    PS1='\[\033[01;32m\]nexus7:\[\033[01;34m\]\w\n\[\033[00m\]\$ '
else
    PS1='\u@\h:\w\$ '
    #OR Super Simple
    #PS1=#
fi
unset color_prompt

# Some aliases
alias ll='ls -l'
alias la='ls -la'
alias mmkdir='mkdir -m 770 -p'
alias ssh='ssh -i ~/.ssh/id_rsa'
#alias tmux='tmux source-file ~/.tmux.conf'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

# Jump to the HOME folder
#cd /data/data/com.spartacusrex.spartacuside/files
tmux

