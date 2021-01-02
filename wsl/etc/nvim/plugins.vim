call plug#begin(stdpath("data") . "/plugged")
" helpful stuff
Plug 'norcalli/nvim-colorizer.lua'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/diagnostic-nvim'

Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

" langs
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" extras
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  } | Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'

" visual
Plug 'ayu-theme/ayu-vim'

Plug 'glepnir/dashboard-nvim'

Plug 'itchyny/lightline.vim' | Plug 'mengelbrecht/lightline-bufferline'
" Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
call plug#end()
