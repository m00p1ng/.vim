call plug#begin('~/.vim/plugged')

"Plug 'edkolev/tmuxline.vim'
Plug 'APZelos/blamer.nvim'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'brooth/far.vim'
Plug 'chakrit/vim-thai-keys'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'google/vim-searchindex'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'm00p1ng/vim-code-dark'
Plug 'mattn/emmet-vim'
Plug 'metakirby5/codi.vim'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'unkiwii/vim-nerdtree-sync'
Plug 'vim-airline/vim-airline'
Plug 'voldikss/vim-floaterm'

" Syntax
Plug 'hdima/python-syntax'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

call plug#end()
