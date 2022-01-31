##############################################################################
# ZSH
##############################################################################
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
    git
    zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh


##############################################################################
# ALIAS
##############################################################################
alias vim="nvim"
alias ls="exa --group-directories-first"
alias ll='exa -alhF --group-directories-first'
alias la='exa -a  --group-directories-first'

# Mnemonic: `gr` == `git root`
alias gr='cd $(git rev-parse --show-toplevel)'



##############################################################################
# PROXY 
##############################################################################
if [ -d "/mnt/c/Users/" ] 
then
    # on wsl
    export all_proxy="socks5://172.18.32.1:7890"
    export https_proxy="http://172.18.32.1:7890"
    export http_proxy="http://172.18.32.1:7890"
else
    export all_proxy="socks5://127.0.0.1:7890"
    export https_proxy="http://127.0.0.1:7890"
    export http_proxy="http://127.0.0.1:7890"
fi


##############################################################################
# WIN CONFIGURATION
##############################################################################
# Directorys
alias win_home="cd /mnt/c/Users/yayiji"



