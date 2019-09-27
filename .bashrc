export PATH="/usr/local/bin:$PATH" 
export PATH="~/bin:$PATH" 
export PATH="~/code/sh:$PATH" 

export PATH="/usr/local/opt/php@7.1/bin/:$PATH"
export PATH="/Applications/XAMPP/bin:$PATH"

export PATH="/usr/bin/rails:$PATH"

export PATH=/opt/local/bin:$PATH
export MANPATH=/opt/local/man:$MANPATH

alias be='bundle exec'
alias re='exec $SHELL -l'
alias o='open'
alias sl='ls'
alias la='ls -a'
alias ll='ls -l'

alias cd='cdls'

alias vi='vim'
eval "$(hub alias -s)"


alias p='git push origin master'
alias a='git add .'
alias cmt='git commit'
alias s='git status'
alias pull='git pull origin master'

function mkdir {
    command mkdir $1 && cd $1
}

eval "$(rbenv init -)"

tmux source-file ~/.tmux.conf
