autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.jsx
autocmd BufNewFile,BufRead *.zsh-theme set filetype=zsh

autocmd Filetype markdown call MdSetting()
autocmd Filetype python call PySetting()
autocmd Filetype cpp call CppSetting()
autocmd Filetype c call CSetting()
autocmd Filetype cs call CsharpSetting()
autocmd Filetype javascript call JsSetting()
autocmd Filetype ruby call RubySetting()
autocmd Filetype html,php,htmldjango call HtmlSetting()
autocmd Filetype java call JavaSetting()
autocmd Filetype go call GoLangSetting()
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

let fn = fnameescape(expand('%'))
let fnwext = fnameescape(expand('%:t:r'))

command! Copy w| silent %y+
command! Reveal w| exec("silent! !open " . fn) | redraw!
command! Cd :cd %:p:h

function! MdSetting()
    setl wrap linebreak nolist wrapmargin=0 textwidth=0
    inoremap <buffer> ** ****<Left><Left>
    inoremap <buffer> ``` ```<CR>```<UP>
endfunction


function! PySetting()
    command! Run w|exec("!python3 " . fn)
    command! Py w|exec("!python " . fn)
    command! Py3 w|exec("!python3 " . fn)
    command! Python w|exec("!python " .fn)
    command! Python3 w|exec("!python3 " . fn)
endfunction


function! HtmlSetting()
    command! Web w|exec("!open -a Safari " . fn)
endfunction


function! CSetting()
    inoremap <buffer> {} {<CR>}<Esc>O
    command! Run w|exec("!clear && gcc " . fn ." && ./a.out")
endfunction


function! CppSetting()
    setl tabstop=4 shiftwidth=4
    inoremap <buffer> {} {<CR>}<Esc>O
    command! Cppi w|exec("!clear && g++ -O2" . fn " && ./a.out < %.in")
    command! Cpp14 w|exec("!clear && g++ -O2 -std=c++14 " . fn . " && ./a.out")
    command! Run w|exec("!clear && g++ -O2 -std=c++11 ". fn . "&& ./a.out")
endfunction


function! JsSetting()
    inoremap <buffer> {} {<CR>}<Esc>O
endfunction


function! RubySetting()
    command! Run w|exec("!ruby " . fn)
endfunction


function! JavaSetting()
    setl tabstop=4 shiftwidth=4
    inoremap <buffer> {} {<CR>}<Esc>O
    command! Rund w|exec("!javac ". fn . " && java " . fnwoext)
    command! Run w|exec("!javac " . fn . " && java Main")
endfunction


function GoLangSetting()
    setl tabstop=4 shiftwidth=4
    inoremap <buffer> {} {<CR>}<Esc>O
    command! Run w| exec("!go run " . fn)
endfunction


function CsharpSetting()
    inoremap <buffer> {} {<CR>}<Esc>O
    command! Run w| exec("!mcs ". fn . " && mono " . fnwoext . ".exe")
endfunction
