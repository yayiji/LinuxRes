# Run this script with: sh make-links.sh

BASE=~/li

makeLink() {
  local target=$1
  local link_name=$2
  rm -rf "$link_name"
  ln -s "$target" "$link_name"
}

# Create the necessary directory. 
mkdir -p ~/.config
mkdir -p ~/tmp
mkdir -p ~/proj
mkdir -p ~/li

# vim and nvim
makeLink "$BASE/vim/vim" ~/.config/vim
makeLink "$BASE/vim/nvim" ~/.config/nvim

#starship
makeLink "$BASE/config/starship.toml" ~/.config/starship.toml

# zsh and bash
makeLink "$BASE/zsh/.zshrc" ~/.zshrc
makeLink "$BASE/zsh/.bashrc" ~/.bashrc
makeLink "$BASE/zsh/.zprofile" ~/.zprofile

# git
makeLink "$BASE/git/.gitconfig" ~/.gitconfig

# daemon
makeLink "$BASE/daemon/ya-hooks.service" /etc/systemd/system/ya-hooks.service
makeLink "$BASE/daemon/ya-ytdlp.service" /etc/systemd/system/ya-ytdlp.service

echo "Done!"