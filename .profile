export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PYTHONPATH=/Library/Python/2.7/site-packages:$PYTHONPATH
export PATH="/usr/local/share/scala/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Directory Aliases
alias cd262="cd ~/Google\ Drive/Work/TAing/cis262 && ls"
alias cdsites="cd ~/Google\ Drive/Sites/ && ls"
alias cdclass="cd ~/Google\ Drive/School/Classes\ 15b && ls"
alias cd559="cd ~/Google\ Drive/School/Classes\ 15b/CIS559/f15-mosquito && ls"
alias cdprog="cd ~/Google\ Drive/Programming/ && ls"
alias cdmatrix="cd ~/Google\ Drive/School/matrix && ls"
alias cdintv="cd ~/Google\ Drive/Work/Interview\ Prep && ls"

# Safety Aliases
alias rm="rm -i"
alias mv="mv -i"

# Tool Aliases
alias less="/usr/share/vim/vim73/macros/less.sh"
alias octave="/usr/local/octave/3.8.0/bin/octave-3.8.0 ; exit ;"
alias hgrep="history | grep"
alias ggrep="git grep"
alias tmuxat="tmux attach -d"

# VIP Greeting 
fortune | cowsay | tee ~/Desktop/most_recent_greeting

# Function aliases
latex() {
  /Library/TeX/texbin/pdflatex $1
}

# Git stuff
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
