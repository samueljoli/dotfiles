" -----------------------------------------------------------------------------
" fzf
" https://github.com/junegunn/fzf
" -----------------------------------------------------------------------------

" map control + p for word search
noremap <C-w> :Ag<Enter>

" map control + f for file search
noremap <C-f> :Files<Enter>

" open silver searcher for word under cursor
nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>
