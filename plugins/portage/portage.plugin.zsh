if which eix > /dev/null
then
        alias esearch="eix "
        alias eiup="eix-update "
        alias eisync="eix-sync "
        alias esync="eix-sync "
else
        alias esearch="emerge --search "
        alias esync="emerge --sync "
fi
 
if which revdep-rebuild > /dev/null
then
        alias eup="emerge -avuND --fetchonly world && emerge  -vuND --keep-going world && revdep-rebuild && emerge -av --depclean"
else
        alias eup="emerge  -avuND world"
fi
 
alias eresume="emerge --ask --verbose --resume "
alias emerge="emerge --ask --verbose "
