let g:blamer_enabled = 1
let g:blamer_delay = 200
let g:blamer_show_in_visual_modes = 0
let g:blamer_show_in_insert_modes = 0
let g:blamer_relative_time = 1

nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

nmap <leader>hp <Plug>(GitGutterPreviewHunk)
nmap <leader>hs <Plug>(GitGutterStageHunk)
nmap <leader>hu <Plug>(GitGutterUndoHunk)
nmap <leader>gd :FloatermNew --autoclose=2 --disposable git diff HEAD %:p<CR>
nmap <leader>gsd :FloatermNew --autoclose=2 --disposable git diffs HEAD %:p<CR>
nmap <leader>gst :FloatermNew --autoclose=2 --disposable git fuzzy status<CR>
nmap <leader>gll :FloatermNew --autoclose=2 --disposable source ~/.zshrc && git_log_fff %<CR>
nmap <leader>glg :FloatermNew --autoclose=2 --disposable source ~/.zshrc && git_log_fff<CR>

" navigate conflicts of current buffer
nmap [c <Plug>(coc-git-prevconflict)
nmap ]c <Plug>(coc-git-nextconflict)
nmap <leader>kc <Plug>(coc-git-keepcurrent)
nmap <leader>ki <Plug>(coc-git-keepincoming)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)


