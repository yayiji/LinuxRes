# Resource
- https://github.com/ibraheemdev/modern-unix

# The apps you should have
- neovim
- eza (for listing files)
- bat
- Starship (for styling the terminal)
- webhook
- pm2


# Servers may need to run in background
- YT-DLP: 
    - npm install -g pm2
    - got to ~/proj/ytdlp
    - pm2 start index.js --name ytdlp
    - pm2 list (to view the runing apps)
- wehook: 
    - webhook -hooks ~/li/hooks/hooks.json &

