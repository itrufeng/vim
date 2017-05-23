# /bin/sh

main() {
  # ag
  if brew ls --versions ag > /dev/null; then
    echo "You had install ag"
  else
    brew install ag
  fi
  # ack
  if brew ls --versions ack > /dev/null; then
    echo "You had install ack"
  else
    brew install ack
  fi
  # macvim
  if brew ls --versions macvim > /dev/null; then
    brew reinstall macvim --with-override-system-vim
  else
    brew install macvim --with-override-system-vim
  fi
  # vim-plug
  if [ ! -f "~/.vim/autoload/plug.vim" ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  fi
  # vimrc
  if [ ! -d "~/.itrufeng/vim" ]; then
    git clone https://github.com/itrufeng/vim.git ~/.itrufeng/vim
    ln -s ~/.itrufeng/vim/.vimrc ~/.vimrc
    vim -c :PlugInstall
  fi
}

main
