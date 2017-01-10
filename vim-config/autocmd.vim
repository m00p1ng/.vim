autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.cpp set omnifunc=omni#cpp#complete#Main
autocmd Filetype markdown call MdSetting()
autocmd Filetype python call PySetting()
autocmd Filetype cpp call CppSetting()
autocmd Filetype javascript call JsSetting()
autocmd Filetype ruby call RubySetting()
autocmd Filetype html,php,htmldjango call HtmlSetting()
autocmd Filetype java call JavaSetting()
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

command! Copy w|!cat %|pbcopy
command! Reveal w|!open %

function! MdSetting()
    setl wrap linebreak nolist wrapmargin=0 textwidth=0
    inoremap <buffer> ** ****<Left><Left>
    inoremap <buffer> ``` ```<CR>```<UP>
endfunction

function! PySetting()
    command! Run w|!python %
    command! Py w|!python %
    command! Py3 w|!python3 %
    command! Python w|!python %
    command! Python3 w|!python3 %
endfunction

function! HtmlSetting()
    command! Web w|!open -a Safari %
endfunction

function! CppSetting()
    inoremap <buffer> {} {<CR>}<Esc>O
    command! Cppi w|!clear && g++ % && ./a.out < %.in
    command! Cpp14 w|!clear && g++ -std=c++14 % && ./a.out
    command! Run w|!clear && g++ -std=c++11 % && ./a.out
endfunction

function! JsSetting()
    inoremap <buffer> {} {<CR>}<Esc>O
    setl shiftwidth=2 tabstop=2
    setl syntax=javascript.jsx
endfunction

function! RubySetting()
    set tabstop=2
    set shiftwidth=2
    set backspace=1
endfunction

function! JavaSetting()
    inoremap <buffer> {} {<CR>}<Esc>O
    command! Run w|!javac % && java %:t:r
endfunction
