let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0

autocmd Filetype html,htmldjango,css,php,javascript,javascript.jsx call SetEmmet()

function SetEmmet()
	EmmetInstall
	imap <C-J> <plug>(emmet-expand-abbr)
endfunction
