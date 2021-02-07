call plug#begin('~/.vim/plugged')

"Plug 'edkolev/tmuxline.vim'
"Plug 'jiangmiao/auto-pairs'
"Plug 'zivyangll/git-blame.vim'
"Plug 'zxqfl/tabnine-vim'
"Plug 'w0rp/ale'
Plug 'APZelos/blamer.nvim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'chakrit/vim-thai-keys'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'google/vim-searchindex'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'm00p1ng/vim-code-dark'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'rking/ag.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'

" Syntax
Plug 'hdima/python-syntax'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

call plug#end()
