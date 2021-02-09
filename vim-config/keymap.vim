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

nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

nnoremap <silent> <leader>tc :FloatermNew<CR>
tnoremap <silent> <leader>tc <C-\><C-n>:FloatermNew<CR>
nnoremap <silent> <leader>tp :FloatermPrev<CR>
tnoremap <silent> <leader>tp <C-\><C-n>:FloatermPrev<CR>
nnoremap <silent> <leader>tn :FloatermNext<CR>
tnoremap <silent> <leader>tn <C-\><C-n>:FloatermNext<CR>
nnoremap <silent> <leader>tt :FloatermToggle<CR>
tnoremap <silent> <leader>tt <C-\><C-n>:FloatermToggle<CR>

nnoremap <leader>pf :Files<CR>
nnoremap <leader>pg :GFiles<CR>
nnoremap <leader>ps :Rg<CR>
nnoremap <leader>rg :Rg <C-R><C-W><CR>

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
