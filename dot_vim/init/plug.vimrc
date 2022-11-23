" -----------------------------------------------------------------------------
" Plugins
" -----------------------------------------------------------------------------

call plug#begin()

Plug 'morhetz/gruvbox'                              " colorscheme
Plug 'luochen1990/rainbow'                          " colored brackets
Plug 'sheerun/vim-polyglot'                         " language syntax highlighting
Plug 'jelera/vim-javascript-syntax'                 " JS syntax highlighting
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy finder
Plug 'junegunn/fzf.vim'
Plug 'MarcWeber/vim-addon-mw-utils'                 " -- snippets dep
Plug 'tomtom/tlib_vim'                              " -- snippets dep
Plug 'honza/vim-snippets'
Plug 'tomtom/tcomment_vim'                          " Commenting
Plug 'tpope/vim-surround'                           " surroundings: parentheses, brackets, quotes, etc
Plug 'neoclide/coc.nvim', {'branch': 'release'}     " LSP language server protocol
Plug 'puremourning/vimspector'                      " Debugger integration
Plug 'davidhalter/jedi-vim'                         " Python autocompletion
Plug 'mhinz/vim-signify'                            " Git diff
Plug 'psf/black', { 'branch': 'stable' }            " Python formatter
Plug 'tpope/vim-fugitive'                           " Git
Plug 'tpope/vim-rhubarb'                            " Hub for Git (enables :GBrowse from vim-fugitive)
Plug 'dense-analysis/ale'                           " Linting LSP client
Plug 'fladson/vim-kitty'                            " Syntax highlighting for kitty
Plug 'vim-airline/vim-airline'                      " Status bar
Plug 'vim-airline/vim-airline-themes'               " Status bar themes
Plug 'tpope/vim-vinegar'                            " file explorer
Plug 'Raimondi/delimitMate'                         " Automatic closing of quotes, parenthesis, brackets, etc
Plug 'xolox/vim-misc'                               " Vim sessions
Plug 'xolox/vim-session'
Plug 'Yggdroot/indentLine'                          " Display thin vertical lines at each indentation level

call plug#end()
