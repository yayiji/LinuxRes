# aliases
alias ls="eza"
alias ll="eza -alF --time-style=relative --time=modified --group-directories-first"
alias python="python3"
alias pip="pip3"

alias pm="pm2"
alias dm="systemctl"
alias dmls="systemctl list-units --type=service | grep"

alias cdli="cd ~/li"
alias cdyt="cd ~/proj/ytdlp"
alias cdtmp="cd ~/tmp"

# ~/.zshrc
eval "$(starship init zsh)"


# Auto-Warpify
[[ "$-" == *i* ]] && printf 'P$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "zsh", "uname": "Linux" }}�' 
