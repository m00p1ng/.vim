" disable arrow key
nnoremap <Up>   <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
inoremap <Up>   <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" map cursor
nnoremap <C-I> <TAB>

" switch tab and buffer
nnoremap <silent> <TAB> :bnext!<CR>
nnoremap <silent> <S-TAB> :bprev!<CR>
nnoremap <leader>q :lnext<CR>
nnoremap <leader>a :lprev<CR>

" custom command
nnoremap U <C-R>
nnoremap D :%d<CR>

inoremap <C-F> <C-X><C-F>
nnoremap <silent> <CR> :noh<CR>

" swap window split
nnoremap ∆ <C-W>J
nnoremap ˚ <C-W>K
nnoremap ¬ <C-W>L
nnoremap ˙ <C-W>H

" map plugin
map <leader>e <plug>NERDCommenterToggle

vnoremap ç :w !pbcopy<CR><CR>
