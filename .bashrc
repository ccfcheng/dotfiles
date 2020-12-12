export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Source files

if [ -r ~/.aliases ]; then
  source ~/.aliases
fi

if [ -r ~/git-completion.bash ]; then
  source ~/git-completion.bash
fi

# Set bash prompt format
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

# Hide outdated bash warning
export BASH_SILENCE_DEPRECATION_WARNING=1
