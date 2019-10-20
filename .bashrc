echo Hello master, I am $(uname).;
if [ $(uname) =  'Darwin' ]; then
    echo Your machine now: Mac;

    ## connecting PATH 
    echo exporting PATH...  
    ### binary
    export PATH="/usr/local/bin:$PATH" 
    export PATH="~/bin:$PATH" 
    export PATH="~/code/sh:$PATH" 
    export PATH=/opt/local/bin:$PATH

    ### php,xampp,ruby,rails,man,
    export PATH="/usr/local/opt/php@7.1/bin/:$PATH"
    export PATH="/Applications/XAMPP/bin:$PATH"
    export PATH="/usr/local/opt/ruby/bin:$PATH"
    export PATH="/usr/bin/rails:$PATH"
    export MANPATH=/opt/local/man:$MANPATH

    ### C++ packages
    export PATH="/usr/local/opt/libxslt/bin:$PATH"
    export PATH="/usr/local/opt/libxml2/bin:$PATH"
    export PATH="/usr/local/opt/libxslt/bin:$PATH"
    export PATH="/usr/local/opt/libiconv/bin:$PATH"

    ### for MacPorts ???
    export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

    ## eval 
    eval "$(hub alias -s)"
    eval "$(rbenv init -)"
    ## MacOS alias
    alias o='open'
fi

if [ $(uname) =  'Linux' ]; then
    echo Your machine now: Linux;
    ### Linux Alias
    alias o='xdg-open'
fi

## command shorten alias
alias be='bundle exec'
alias re='exec $SHELL -l'
alias sl='ls'
alias la='ls -a'
alias ll='ls -l'
alias g='git'
alias vi='vim'
alias v='vi'

## git shorten alias
alias p='git push origin master'
alias a='git add .' # later a cmt
alias cmt='git commit'
alias s='git status'
alias pull='git pull origin master'

## extend command
function mkdir {
    command mkdir $1 && cd $1
}
function cdls() {
    \cd "$@" && ls
} # rm ls later
alias cd='cdls'


tmux source-file ~/.tmux.conf




