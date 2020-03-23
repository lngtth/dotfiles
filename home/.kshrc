. /etc/ksh.kshrc

# Aliases
[ -f ~/.aliases ] && . ~/.aliases

reset='\033[00m'
blk='\033[30m'
red='\033[31m'
grn='\033[32m'
yel='\033[33m'
blu='\033[34m'
mag='\033[35m'
cya='\033[36m'
wht='\033[37m'
bold='\033[1m'
under='\033[4m'

# Root formatting and prompt
if [ $(id -u) -eq 0 ]
then
	uf='$red$bold'
	hf='$red'
	pf='$blk$bold'
	prompt='#'
# Normal formatting and prompt
else
	uf='$wht$bold'
	hf='$wht'
	pf='$blk$bold'
	prompt='\$'
fi

r='$reset'
u='$USER'
h='$HOST'
p='$(pwd | sed "s,^$HOME,~," | sed "s,^/home/,~,")'

export PS1="\[$r$uf$u$r@$hf$h$r $pf$p$r $uf$prompt$r \]"
