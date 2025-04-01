# Run this script with: sh make-links.sh

BASE_DIR=~/LinuxRes

makeLink() {
  local target=$1
  local link_name=$2
  rm -rf "$link_name"
  ln -s "$target" "$link_name"
}

# vim and nvim
makeLink "$BASE_DIR/vim/vim" ~/.config/vim
makeLink "$BASE_DIR/vim/nvim" ~/.config/nvim

# zsh and bash
makeLink "$BASE_DIR/zsh/.zshrc" ~/.zshrc
makeLink "$BASE_DIR/zsh/.bashrc" ~/.bashrc
makeLink "$BASE_DIR/zsh/.zprofile" ~/.zprofile

# git
makeLink "$BASE_DIR/git/.gitconfig" ~/.gitconfig

echo "Done!"