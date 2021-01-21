call plug#begin(stdpath("data") . "/plugged")
" libs/stuff
Plug 'nvim-lua/popup.nvim' " popup implementation for nvim
Plug 'nvim-lua/plenary.nvim' " lua functions

" helpful stuff
Plug 'norcalli/nvim-colorizer.lua' " highlight colors
Plug 'jiangmiao/auto-pairs' " automatically close brackets etc
Plug 'Yggdroot/indentLine' " shows indentation
Plug 'godlygeek/tabular' " align all the stuff
Plug 'liuchengxu/vim-which-key' " show key combos
Plug 'tpope/vim-surround' " ez change of sourrounding tags/quotes
Plug 'dense-analysis/ale' " linting

" lsp
Plug 'neovim/nvim-lspconfig' " nvim lsp client
Plug 'nvim-lua/completion-nvim' " lsp completion
Plug 'aca/completion-tabnine', { 'do': './install.sh'  } " tabnine integration
Plug 'nathunsmitty/nvim-ale-diagnostic' " ale integration

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' } " beautiful syntax ftw

" langs
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } } " preview markdown

" extras
Plug 'mhinz/vim-signify' " signs in signcolumn
Plug 'preservim/nerdcommenter' " commenting ftw
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  } | Plug 'junegunn/fzf.vim' " fuzzyfinder
Plug 'tpope/vim-fugitive' " git integration
Plug 'nvim-telescope/telescope.nvim' " fuzzy fidner in lua

" visual
Plug 'ayu-theme/ayu-vim'

Plug 'glepnir/dashboard-nvim' " startpage

Plug 'itchyny/lightline.vim' | Plug 'mengelbrecht/lightline-bufferline' | Plug 'maximbaz/lightline-ale' " statusline
call plug#end()
