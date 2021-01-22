" ========== Vim Options ============ "
filetype plugin indent on
syntax enable

" colorscheme
let ayucolor = "dark"
colorscheme ayu

" generic
set scrolloff=1
set cursorline
set mouse=a
set number
set signcolumn=yes
set termguicolors
set laststatus=2
set showtabline=2
set noshowmode

" indenting
set tabstop=2
set softtabstop=2
set shiftwidth=2
set nocopyindent
set expandtab

" searching
set incsearch
set hlsearch
set ignorecase
set smartcase

set backspace=indent,eol,start

" netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
