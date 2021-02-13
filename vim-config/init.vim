" LOAD CONFIG
let s:dirname = "~/.vim/vim-config"
exec "source " . s:dirname . "/plugin.vim"
exec "source " . s:dirname . "/airline.vim"
exec "source " . s:dirname . "/emmet.vim"
exec "source " . s:dirname . "/keymap.vim"
exec "source " . s:dirname . "/autocmd.vim"
exec "source " . s:dirname . "/nerd-tree.vim"
exec "source " . s:dirname . "/coc.vim"
exec "source " . s:dirname . "/floaterm.vim"
exec "source " . s:dirname . "/git.vim"
exec "source " . s:dirname . "/fzf.vim"

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
set shiftwidth=2
set softtabstop=2
set tabstop=2
set backspace=2
set expandtab

set ignorecase
set incsearch hlsearch

set mouse=nicr
set ttimeoutlen=100
set history=1000
set cursorline
set splitbelow

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
"set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=cS

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
"if has("patch-8.1.1564")
  "" Recently vim can merge signcolumn and number column into one
  "set signcolumn=number
"else
  "set signcolumn=yes
"endif

if has('nvim')
    set runtimepath+=~/.vim,~/.vim/after
    set packpath+=~/.vim
endif

if has('vim')
    set cm=blowfish2
endif

let g:incsearch#auto_nohlsearch=1

let g:far#window_min_content_width=30
let g:far#window_width=60

let g:python_highlight_operators=0
let g:python_highlight_all=1

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0

let g:better_whitespace_filetypes_blacklist=[
    \'qf',
    \'help',
    \'far'
\]

let g:NERDSpaceDelims=1
let g:NERDCompactSexyComs=1
let g:NERDDefaultAlign='left'

let g:startify_files_number=20
