curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "source ~/.vim/vim-config/init.vim" > ~/.vimrc
mkdir -p ~/.config/nvim && cp ~/.vim/vim-config/init.vim ~/.config/nvim
ln -sf $PWD/coc-settings.json $HOME/.config/nvim

vim +PlugInstall +qall
