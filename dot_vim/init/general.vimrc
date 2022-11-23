" -----------------------------------------------------------------------------
" General settings
" -----------------------------------------------------------------------------

" Leader
let mapleader = "\<Space>"

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast

" Fix backspace indent
set backspace=indent,eol,start

" Theme
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray
set termguicolors
set bg=dark
set title
set titleold="Terminal"
set titlestring=%F
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\%{fugitive#statusline()}
set t_Co=256
set guioptions=egmrti
set gfn=Monospace\ 10
if &term =~ '256color'
  set t_ut=
endif

" mouse support
set mouse=a
set mousemodel=popup


if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set guifont=Menlo:h12
    set transparency=7
  endif
else
  if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
  else
    if $TERM == 'xterm'
      set term=xterm-256color
    endif
  endif
endif

" File directory
let g:netrw_banner = 0 " ---------------- remove directory banner
let g:netrw_winsize = 25 " -------------- set directory window to 25% of screen
let g:netrw_liststyle = 3 " ------------- set list view style to 3
let g:netrw_altv = 1 " ------------------ open file in vertical split
let ghregex='\(^\|\s\s\)\zs\.\S\+' " ---- regex for ignoring files
let g:netrw_list_hide=ghregex " --------- set regex
" let g:netrw_browse_split = 4
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

" File navigation
set relativenumber " -------------------- line numbers relative to cursor
set ruler " ----------------------------- show the cursor position all the time
set number " ---------------------------- show line numbers
set numberwidth=5 " --------------------- minimal number of columns to use for the line number
set mouse=a " --------------------------- allow scrolling using mousepad
set cursorline " ------------------------ cursor line

" Tab
set smartindent " ----------------------- smart indenting when starting a new line
set smarttab " -------------------------- tab in front of a line inserts blanks
set autoindent " ------------------------ copy indent from current line when starting a new line
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " ------------------------- in insert mode use the appropriate number of spaces to insert a tab

" No swap files
set noswapfile
set nobackup
set nowb

" Syntax
syntax on " ------------------------------ highlight colors are overruled but links are kept
syntax enable " -------------------------- define colors for groups that don't have highlighting yet
set re=0 " ------------------------------- Set redraw to 0. Configured because Typescript syntax highlighting is broken
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  " Also switch on highlighting the last used search pattern.
  syntax on
endif

" Better command line completion
set wildmenu

" Search
set incsearch "    --------------------------- Find the next match as we type the search
set hlsearch "     --------------------------- Highlight all search matches
set shortmess-=S " --------------------------- No shortening of messages (turned on to enable highlight search count)

" GF (Go to file)
set path+=$PWD/node_modules " Enable jumping into node_modules
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set backspace=indent,eol,start "Fix delete in insert mode
" open new windows below the current window
set splitbelow
" open new windowns to the right
set splitright

" Mappings
" j/k/h/l to switch panes
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

" Terminal
nnoremap <silent> T :term ++close<CR>

nnoremap <silent> <leader>e :exit<cr>

" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif
if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif
