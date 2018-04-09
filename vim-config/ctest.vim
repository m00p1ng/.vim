autocmd Filetype cpp call Ctest()
autocmd Filetype output call TestfileSetting()
autocmd BufNewFile,BufRead *.in set filetype=input
autocmd BufNewFile,BufRead *.out set filetype=output

let fn = fnameescape(expand('%'))
let g:fnwoext = fnameescape(expand('%:t:r'))
let g:dirname = 'testcase'

function! Ctest()
    command! Rund w|"!clear && g++ -std=c++11 -DDEBUG " . fn . " && ./a.out"
    command! -nargs=1 Cin w|call Cin(<f-args>)
    command! -nargs=1 Cout w|call Cout(<f-args>)
    command! -nargs=1 Cinout w|call Cinout(<f-args>)
    command! Ctest w| exec("!python ~/.dotfile/command/ctest.py" . fn)
    command! Cdebug w| exec("!python ~/.dotfile/command/ctest.py " . fn . " debug")
    command! Cdiff w| exec("!python ~/.dotfile/command/ctest.py " . fn . " diff")
    command! Cdiffall w| exec("!python ~/.dotfile/command/ctest.py " . fn . " diff all")
    command! -nargs=1 Ccase w| exec("!python ~/.dotfile/command/ctest.py " . fn . " diff case " . <f-args>)
    command! -nargs=1 Ccaseall w| exec("!python ~/.dotfile/command/ctest.py " . fn . " diff all case" <f-args>)
endfunction

function! TestfileSetting()
    setl binary
    setl noeol
endfunction

function! ExistDir()
    if !isdirectory(g:dirname)
        call mkdir(g:dirname)
    endif
endfunction

function! Cin(number)
    call ExistDir()
    exec 'e '.g:dirname.'/'.g:fnwoext.'_'.a:number.'.in'
endfunction

function! Cout(number)
    call ExistDir()
    exec 'e '.g:dirname.'/'.g:fnwoext.'_'.a:number.'.out'
endfunction

function! Cinout(number)
    call Cin(a:number)
    exec 'bp'
    call Cout(a:number)
    exec 'bn'
    exec 'bn'
endfunction

