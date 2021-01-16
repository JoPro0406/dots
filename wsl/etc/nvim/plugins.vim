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

" lsp
Plug 'neovim/nvim-lspconfig' " nvim lsp client
Plug 'nvim-lua/completion-nvim' " lsp completion
Plug 'nvim-lua/diagnostic-nvim' " lsp diagnostics

Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' } " beautiful syntax ftw

" langs
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } } " preview markdown

" extras
Plug 'airblade/vim-gitgutter' " git integration
Plug 'preservim/nerdcommenter' " commenting ftw
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  } | Plug 'junegunn/fzf.vim' " fuzzyfinder
Plug 'tpope/vim-fugitive' " more git integration
Plug 'nvim-telescope/telescope.nvim' " fuzzy fidner in lua

" visual
Plug 'ayu-theme/ayu-vim'

Plug 'glepnir/dashboard-nvim' " startpage

Plug 'itchyny/lightline.vim' | Plug 'mengelbrecht/lightline-bufferline' " statusline | buffer integration for the tabline
" Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes' " status/bufferline | themes
call plug#end()
