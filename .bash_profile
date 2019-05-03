eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH=/usr/local/opt/php@7.1/bin:$PATH
source ~/.bashrc

if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

function cdls() {
    \cd "$@" && ls
}

