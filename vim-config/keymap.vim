" switch tab and buffer
" Option + 2
nnoremap <silent> ™ :bnext!<CR>
" Option + 1
nnoremap <silent> ¡ :bprev!<CR>
nnoremap <leader>q :lnext<CR>
nnoremap <leader>a :lprev<CR>

inoremap <C-F> <C-X><C-F>
nnoremap <silent> <CR> :noh<CR>

" swap window split
" Option + J
nnoremap ∆ <C-W>J
" Option + K
nnoremap ˚ <C-W>K
" Option + L
nnoremap ¬ <C-W>L
" Option + H
nnoremap ˙ <C-W>H

" map plugin
map <leader>e <plug>NERDCommenterToggle

" Option + C
vnoremap ç "+y
" Option + V
nnoremap √ "+p
" Option + V
inoremap √ <C-c>"+pi

" Tab or autocomplete
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" Rename file
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'))
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':slient !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>rn :call RenameFile()<cr>
