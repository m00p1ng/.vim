" LOAD CONFIG
let s:dirname = "~/.vim/vim-config"
exec "source " . s:dirname . "/plugin.vim"
exec "source " . s:dirname . "/airline.vim"
exec "source " . s:dirname . "/emmet.vim"
exec "source " . s:dirname . "/keymap.vim"
exec "source " . s:dirname . "/autocmd.vim"
exec "source " . s:dirname . "/ctest.vim"
exec "source " . s:dirname . "/nerd-tree.vim"
exec "source " . s:dirname . "/coc.vim"
exec "source " . s:dirname . "/floaterm.vim"
exec "source " . s:dirname . "/git.vim"

set laststatus=2
syntax on
colorscheme codedark
set background=dark

set number
set ruler

filetype indent on
set wildmenu
set wildmode=longest,full

set wildignore+=*/tmp/*,*/bundle/*
set wildignore+=*.so,*.swp
set wildignore+=*.zip,*.rar
set wildignore+=*.mp4,*.avi,*.mkv,*.flv,*.wmv
set wildignore+=*.iso,*.img
set wildignore+=*.pyc,*pyo
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
set splitbelow
set noshowcmd

if has('vim')
    set cm=blowfish2
endif

if executable('rg')
    set grepprg=rg\ --color=never
    let g:ctrlp_user_command = 'rg %s --files -g ' . "'!.git'" . ' --hidden --color=never --glob ""'
    let g:ctrlp_use_caching = 0
else
    let g:ctrlp_clear_cache_on_exit = 0
endif
let g:ctrlp_match_window = 'order:ttb'
let g:ctrlp_use_caching = 0

let g:incsearch#auto_nohlsearch = 1

let g:far#window_min_content_width=30
let g:far#window_width=60

