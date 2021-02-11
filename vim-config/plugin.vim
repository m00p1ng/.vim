call plug#begin('~/.vim/plugged')

"Plug 'edkolev/tmuxline.vim'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'APZelos/blamer.nvim'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'brooth/far.vim'
Plug 'chakrit/vim-thai-keys'
Plug 'google/vim-searchindex'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'm00p1ng/vim-code-dark'
Plug 'mattn/emmet-vim'
Plug 'metakirby5/codi.vim'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ntpeters/vim-better-whitespace'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'unkiwii/vim-nerdtree-sync'
Plug 'vim-airline/vim-airline'
Plug 'voldikss/vim-floaterm'
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }

" Syntax
"Plug 'peitalin/vim-jsx-typescript'

call plug#end()
