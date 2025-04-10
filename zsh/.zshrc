# aliases
alias ll="eza -alF --time-style=relative --group-directories-first"
alias python="python3"
alias pip="pip3"

alias cdli="cd ~/li"
alias cdyt="cd ~/proj/ytdlp"

# ~/.zshrc
eval "$(starship init zsh)"


# Auto-Warpify
[[ "$-" == *i* ]] && printf 'P$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "zsh", "uname": "Linux" }}�' 
