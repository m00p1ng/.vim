" LOAD CONFIG
source ~/.vim/vim-config/vundle.vim
source ~/.vim/vim-config/airline.vim
source ~/.vim/vim-config/emmet.vim
source ~/.vim/vim-config/keymap.vim
source ~/.vim/vim-config/syntastic.vim
source ~/.vim/vim-config/autocmd.vim

set laststatus=2
syntax on
colorscheme mooping
set background=dark

set number
set ruler

filetype indent on
set wildmenu
set wildmode=longest,full

set wildignore+=*/tmp/*,*/bundle/*
set wildignore+=*.so,*.swp
set wildignore+=*.zip,*.rar
set wildignore+=*.mp4,*.avi,*.mkv,*.flv
set wildignore+=*.iso
set wildignore+=*.pyc
set wildignore+=*.class
set wildignore+=*.pdf,*.doc,*.docx,*.ppt,*.pptx
set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.ico

set autoindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set backspace=2
set expandtab

set ignorecase
set incsearch hlsearch

set mouse=nicr
set ttimeoutlen=100
set history=1000
set cursorline

let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
let g:incsearch#auto_nohlsearch = 1
map « :NERDTreeToggle<CR>

let python_highlight_all = 1
let g:pyindent_continue = '&sw'
let g:pyindent_open_paren = '&sw'

let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

let g:vim_markdown_folding_disabled = 1

let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0

hi Comment ctermfg=243
hi Special ctermfg=141

let g:indentLine_char = '┆'
