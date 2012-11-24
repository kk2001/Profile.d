# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# append to the history file, don't overwrite it
shopt -s histappend
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}saipanno@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Prompt definitions. 
[ -f ~/.bash/prompt.sh ] && source ~/.bash/prompt.sh

# Alias definitions.
[ -f ~/.bash/alias.sh ] && source ~/.bash/alias.sh
