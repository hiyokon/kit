alias ls='ls'
alias la='ls -la'
alias lg='la | grep'
alias ll='la | less'

export PS1='\[\e[1;33m\][\u:\w]\$\[\e[00m\] '
export LS_COLORS='no=00:fi=00:di=01;36:ln=01;31'

export PATH=/usr/local/bin:$PATH
export PATH=~/.cabal/bin:$PATH
