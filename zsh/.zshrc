# aliases
alias ll="eza -alF --group-directories-first"
alias python="python3"
alias pip="pip3"

# ~/.zshrc
eval "$(starship init zsh)"


# Auto-Warpify
printf 'P$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "zsh", "uname": "Linux" }}' 
