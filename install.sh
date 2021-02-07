curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "source ~/.vim/vim-config/main.vim" > ~/.vimrc
mkdir -p ~/.config/nvim && cp ~/.vim/vim-config/init.vim ~/.config/nvim
vim +PlugInstall +qall
