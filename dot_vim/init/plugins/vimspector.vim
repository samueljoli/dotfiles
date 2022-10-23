" -----------------------------------------------------------------------------
" Vimspector
" https://github.com/puremourning/vimspector
" -----------------------------------------------------------------------------

nnoremap <leader>da :call vimspector#Launch()<CR>
nnoremap <leader>dx :call vimspector#Reset()<CR>
nnoremap <leader>dh :call vimspector#ToggleBreakpoint()<CR>
nnoremap <S-j> :call vimspector#StepOver()<CR>
nnoremap <S-k> :call vimspector#StepOut()<CR>
nnoremap <S-l> :call vimspector#StepInto()<CR>
