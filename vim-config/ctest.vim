autocmd Filetype cpp call Ctest()
autocmd Filetype output call TestfileSetting()
autocmd BufNewFile,BufRead *.in set filetype=input
autocmd BufNewFile,BufRead *.out set filetype=output

function! Ctest()
    command! Rund w|!clear && g++ -std=c++11 -DDEBUG % && ./a.out
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

