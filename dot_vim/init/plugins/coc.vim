" -----------------------------------------------------------------------------
" Conquer of Completion
" https://github.com/neoclide/coc.nvim
" -----------------------------------------------------------------------------

" https://github.com/neoclide/coc-snippets
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> td <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Press Tab and Shift+Tab and navigate around completion selections
function! s:check_back_space() abort
  let col = col('.') -1
  return !col || getline('.')[col - 1] =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<Tab>" :
  \ coc#refresh()
inoremap <silent><expr> <S-Tab>
  \ pumvisible() ? "\<C-p>" :
  \ <SID>check_back_space() ? "\<S-Tab>" :
  \ coc#refresh()

" Press Enter to select completion items or expand snippets
inoremap <silent><expr> <CR>
  \ pumvisible() ? "\<C-y>" :
  \ "\<C-g>u\<CR>"

let g:coc_snippet_next = '<Tab>'              " Use Tab to jump to next snippet placeholder
let g:coc_snippet_prev = '<S-Tab>'            " Use Shift+Tab to jump to previous snippet placeholder


" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
let g:coc_disable_startup_warning = 1
let g:coc_global_extensions = ["coc-pyright", "coc-sh", "coc-cmake", "coc-go", "coc-markdownlint", "coc-tsserver", "coc-json", "coc-snippets"]

nnoremap <silent> <leader>cl :CocDiagnostics<cr>
nnoremap <silent> <leader>ch :call CocAction('doHover')<cr>
nnoremap <silent> <leader>cf <plug>(coc-codeaction-cursor)
nnoremap <silent> <leader>ca <plug>(coc-fix-current)
nmap <leader>rn <Plug>(coc-rename)

nmap <silent> [c <plug>(coc-diagnostic-prev)
nmap <silent> ]c <plug>(coc-diagnostic-next)

nmap <silent> [c <plug>(coc-diagnostic-prev)
nmap <silent> ]c <plug>(coc-diagnostic-next)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
