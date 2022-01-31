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
# export all_proxy="socks5://127.0.0.1:7890"
# export https_proxy="http://127.0.0.1:7890"
# export http_proxy="http://127.0.0.1:7890"





