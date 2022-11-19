" -----------------------------------------------------------------------------
" fzf
" https://github.com/junegunn/fzf
" -----------------------------------------------------------------------------

" Redefine :Ag command to accept arguments
function! s:ag_with_opts(arg, bang)
  let tokens  = split(a:arg)
  let ag_opts = join(filter(copy(tokens), 'v:val =~ "^-"'))
  let query   = join(filter(copy(tokens), 'v:val !~ "^-"'))
  let full_screen_with_preview = fzf#vim#with_preview({'down': '100%'})
  let with_preview = fzf#vim#with_preview()

  call fzf#vim#ag(query, ag_opts, a:bang ? full_screen_with_preview : with_preview)
endfunction
autocmd VimEnter * command! -nargs=* -bang Ag call s:ag_with_opts(<q-args>, <bang>0)

" map control + p for word search
nnoremap <silent> <Leader>w :Ag<Enter>

" map control + f for file search
nnoremap <silent> <Leader>f :Files<Enter>

" open silver searcher for word under cursor
nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>
