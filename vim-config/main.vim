" LOAD CONFIG
let s:dirname = "~/.vim/vim-config"
exec "source " . s:dirname . "/plugin.vim"
exec "source " . s:dirname . "/airline.vim"
exec "source " . s:dirname . "/emmet.vim"
exec "source " . s:dirname . "/keymap.vim"
exec "source " . s:dirname . "/syntastic.vim"
exec "source " . s:dirname . "/autocmd.vim"
exec "source " . s:dirname . "/ctest.vim"
exec "source " . s:dirname . "/nerd-tree.vim"

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

set cm=blowfish2

if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
else
  let g:ctrlp_clear_cache_on_exit = 0
endif
let g:ctrlp_match_window = 'order:ttb'
let g:ctrlp_use_caching = 0

let g:blamer_enabled = 1
let g:blamer_delay = 200
let g:blamer_show_in_visual_modes = 0
let g:blamer_show_in_insert_modes = 0
let g:blamer_relative_time = 1

let g:incsearch#auto_nohlsearch = 1

"let python_highlight_all = 1
let g:pyindent_continue = '&sw'
let g:pyindent_open_paren = '&sw'

let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1

let g:ale_fixers = {
 \  '*': ['remove_trailing_lines', 'trim_whitespace'],
 \ 'javascript': ['eslint']
 \ }

let g:NERDTreeGitStatusShowIgnored = 1

"hi Comment ctermfg=243
"hi Special ctermfg=141
