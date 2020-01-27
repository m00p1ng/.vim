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

vnoremap ç "+y
nnoremap √ "+p
inoremap √ <C-c>"+pi
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
 

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
map <leader>n :call RenameFile()<cr>

