alias s="ssh -v"
alias m="mosh"
alias sr='ssh -v -l root'

alias w1='watch -n 1'
alias w5='watch -n 5'
alias w10='watch -n 10'

# mosh aliases
lisa() {
 mosh --ssh='ssh -l lisa' $1 -- sudo tmux attach
}

mr() {
 mosh --ssh='ssh -l root' $1 -- tmux attach
}

me() {
 mosh $1 -- sudo tmux attach
}


# List the most recent files in a directory
lsnew()
{
        ls -lt ${1+"$@"} | head -20;
}

# Make directory and cd inside it
function mkcd {
    mkdir -p "$*"
    cd "$*"
}

# Random password generation function
function genpasswd {
  local l=25 # default password lenght
  if [ "$#" != "0" -a "$1" -gt 0 ]
  then
    l=$1
  fi
  tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}
