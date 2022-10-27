" -----------------------------------------------------------------------------
" fzf
" https://github.com/junegunn/fzf
" -----------------------------------------------------------------------------

" map control + p for word search
nnoremap <silent> <Leader>w :Ag<Enter>

" map control + f for file search
nnoremap <silent> <Leader>f :Files<Enter>

" open silver searcher for word under cursor
nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>
