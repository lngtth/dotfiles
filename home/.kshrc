. /etc/ksh.kshrc

export PATH HOME TERM
export ENV=$HOME/.kshrc
export LC_CTYPE=en_US.UTF-8

# colorls
export LSCOLORS=exfxcxdxbxegedabagacad

# aliases
if [ -f ~/.ksh_aliases ]
then
	. ~/.ksh_aliases
fi

# terminal prompt
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

# root/admin
if [ $(id -u) -eq 0 ]
then
	uf='$red$bold'
	prompt='#'
# normal
else
	uf='$blu$bold'
	prompt='\$'
fi

r='$reset'
u='$USER'
hf='$yel'
h='$HOST'
pf='$blk$bold'
p='$(pwd | sed "s,^$HOME,~,")'

export PS1="\[$r[$uf$u$r@$hf$h$r $pf$p$r] $uf$prompt$r \]"
