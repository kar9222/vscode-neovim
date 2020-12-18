function! s:toFirstCharOfScreenLine()
    call VSCodeExtensionNotify('cursor-move', 'wrappedLineFirstNonWhitespaceCharacter')
endfunction

function! s:toLastCharOfScreenLine()
    call VSCodeExtensionNotify('cursor-move', 'wrappedLineLastNonWhitespaceCharacter')
    " Offfset cursor moving to the right caused by calling VSCode command in Vim mode
    call VSCodeNotify('cursorLeft')
endfunction

nnoremap g0 <Cmd>call <SID>toFirstCharOfScreenLine()<CR>
nnoremap g$ <Cmd>call <SID>toLastCharOfScreenLine()<CR>







" TODO See https://github.com/microsoft/vscode/issues/2771

" function! s:selectToFirstCharOfScreenLine()
"     " normal! gv
"     " exe "normal! \<Esc>"
"     " TODO This works but initial selection missing
"     normal! m>
"     sleep 1m  " Delay is required before calling VSCode command
"     call VSCodeNotify('cursorHome')
"     sleep 100m
"     normal! m<gv
" endfunction

" function! s:selectToLastCharOfScreenLine()
"     normal! <Esc>m5
"     " let startPos = col('.')
"     call VSCodeNotify('cursorEnd')
"     sleep 85m
"     normal! h
"     " let endPos = col('.')
"     " normal! m6
"     normal! vx5o
" endfunction

" " TODO `<Esc>`
" xnoremap g0 <Esc><Cmd>call <SID>selectToFirstCharOfScreenLine()<CR>
" xnoremap g$ <Cmd>call <SID>selectToLastCharOfScreenLine()<CR>
