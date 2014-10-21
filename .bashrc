# ~/.bashrc

# Check whether the bash is under interactive mode
#[ -z "$PS1" ] && echo "Noop" || echo "Yes"

# Set history size and ~/.bash_history file size
HISTSIZE=1000
HISTFILESIZE=2000

# All alias
ALIAS_FILE=~/.bashrc.alias
if [ -f $ALIAS_FILE ]
then
	. $ALIAS_FILE
fi

# All helper functions
FUNC_FILE=~/.bashrc.funcs
if [ -f $FUNC_FILE ]
then
	source $FUNC_FILE
fi
