# run for interactive shells only
[[ $- != *i* ]] && return

PATH=$PATH:~/bin

if [[ -f ~/bin/nvim/bin/nvim ]]; then
  alias vi=~/bin/nvim/bin/nvim
elif [[ -f /opt/homebrew/bin/nvim ]]; then
  alias vi=/opt/homebrew/bin/nvim
elif [[ -f /usr/bin/vim ]]; then
  alias vi="/usr/bin/vim"
fi

alias c=clear
alias p=pwd
alias l='ls -a'
alias ls='ls --color=auto'
alias b='cd ..;pwd'
alias type='type -a'
alias code='code --disable-gpu'

if [[ -f ~/bin/calendar.py ]]; then
  ~/bin/calendar.py
fi

# Use vi navigation with bash.
set -o vi

#PROMPT_COMMAND='printf "\\e]9;9;%s\\a" "$PWD"; '"${PROMPT_COMMAND:-}"
PS1='\[\033[0;94m\]\u@\h $ \[\033[0m\]'

# display line number when debugging bash scripts
export PS4="+ \${LINENO} "

export CODEX_CONFIG_PATH="$HOME/.codex/config.toml"

export HISTCONTROL=ignoredups

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

~/motd.bash
