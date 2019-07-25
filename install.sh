curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "source ~/.vim/vim-config/main.vim" > ~/.vimrc
vim +PlugInstall +qall
