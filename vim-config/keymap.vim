" switch tab and buffer
nnoremap <silent> ™ :bnext!<CR>
nnoremap <silent> ¡ :bprev!<CR>
nnoremap <leader>q :lnext<CR>
nnoremap <leader>a :lprev<CR>

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
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
 
