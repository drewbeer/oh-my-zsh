alias t='clogin'
alias c='clogin'
alias j='jlogin'
alias sd='ssh -v'
alias s="mosh --ssh='ssh -l drew'"
alias kms="mosh --ssh='ssh -l kms'"
alias lisa="mosh --ssh='ssh -l lisa'"
alias sr='ssh -v -l root'
alias se='ssh -v -l exstatica'
alias bb='ssh -v -i ~/.ssh/safesoft_id_rsa -l admin'

alias o='mosh root@o.d.scurvy'
alias sulfur='s sulfur'
alias redline='s redline'

alias w1='watch -n 1'
alias w5='watch -n 5'
alias w10='watch -n 10'

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
