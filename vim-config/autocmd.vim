autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd BufNewFile,BufRead *.in set filetype=input
autocmd BufNewFile,BufRead *.out set filetype=output
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.cpp set omnifunc=omni#cpp#complete#Main
autocmd Filetype markdown call MdSetting()
autocmd Filetype python call PySetting()
autocmd Filetype cpp call CppSetting()
autocmd Filetype javascript call JsSetting()
autocmd Filetype ruby call RubySetting()
autocmd Filetype html,php,htmldjango call HtmlSetting()
autocmd Filetype output call TestfileSetting()
autocmd Filetype java call JavaSetting()
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

command! Ccopy !cat %|pbcopy
command! Reveal !open %

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
    command! Run w|!clear && g++ -std=c++11 % && ./a.out
    command! Rund w|!clear && g++ -std=c++11 -DDEBUG % && ./a.out
    command! Cpp14 w|!clear && g++ -std=c++14 % && ./a.out
    command! -nargs=1 Cin w|call Cin(<f-args>)
    command! -nargs=1 Cout w|call Cout(<f-args>)
    command! -nargs=1 Cinout w|call Cinout(<f-args>)
    command! Ctest w|!python ~/.dotfile/command/ctest.py %
    command! Cdebug w|!python ~/.dotfile/command/ctest.py % debug
    command! Cdiff w|!python ~/.dotfile/command/ctest.py % diff
    command! Cdiffall w|!python ~/.dotfile/command/ctest.py % diff all
    command! -nargs=1 Ccase w|!python ~/.dotfile/command/ctest.py % diff case <f-args>
    command! -nargs=1 Ccaseall w|!python ~/.dotfile/command/ctest.py % diff all case <f-args>
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

function! TestfileSetting()
    setl binary
    setl noeol
endfunction

function! Cin(number)
    let dirname = 'testcase'
    if !isdirectory(dirname)
        call mkdir(dirname)
    endif
    exec 'e '.dirname.'/%:t:r_'.a:number.'.in'
endfunction

function! Cout(number)
    let dirname = 'testcase'
    if !isdirectory(dirname)
        call mkdir(dirname)
    endif
    exec 'e '.dirname.'/%:t:r_'.a:number.'.out'
endfunction

function! Cinout(number)
    call Cin(a:number)
    exec 'bp'
    call Cout(a:number)
    exec 'bn'
    exec 'bn'
endfunction

function! JavaSetting()
    inoremap <buffer> {} {<CR>}<Esc>O
    command! Run w|!javac % && java %:t:r
endfunction
