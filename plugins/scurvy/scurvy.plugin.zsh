alias s="ssh -v"
alias sr='ssh -v -l root'
alias m="mosh"

alias w1='watch -n 1'
alias w5='watch -n 5'
alias w10='watch -n 10'

# mosh aliases
lisa() {
 h=("${(s/./)1}")
 h=$h[1]
 print -Pn "\e]0;$h\a"
 mosh --ssh='ssh -l lisa' $1 -- sudo tmux attach -d
}

mr() {
 h=("${(s/./)1}")
 h=$h[1]
 print -Pn "\e]0;$1\a"
 mosh --ssh='ssh -l root' $1 -- tmux attach -d
}

me() {
 h=("${(s/./)1}")
 h=$h[1]
 print -Pn "\e]0;$1\a"
 mosh $1 -- sudo tmux attach -d
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
