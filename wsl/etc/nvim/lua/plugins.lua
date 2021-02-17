local install_path = vim.fn.stdpath('data') .. '/site/packer/opt/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.cmd('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use { 'wbthomason/packer.nvim', opt = true }
  -- use 'tweekmonster/startuptime.vim'

  use 'dense-analysis/ale'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'
  use { 'aca/completion-tabnine', run = './install.sh', requires = 'nvim-lua/completion-nvim' }
  use { 'nathunsmitty/nvim-ale-diagnostic', requires = 'dense-analysis/ale' }

  use { 'LnL7/vim-nix', ft = 'nix' }
  use { 'iamcco/markdown-preview.nvim', run = ':call mkdp#util#install()', ft = 'markdown' }

  use 'norcalli/nvim-colorizer.lua'
  use 'jiangmiao/auto-pairs'
  use { 'godlygeek/tabular', cmd = { 'Tab', 'Tabularize' } }
  use 'liuchengxu/vim-which-key'
  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'
  use 'mhinz/vim-signify'
  use 'preservim/nerdcommenter'
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim' } }
  use { 'nvim-telescope/telescope-packer.nvim', requires = 'nvim-telescope/telescope.nvim' }
  use { 'junegunn/goyo.vim', requires = 'junegunn/limelight.vim', cmd = 'Goyo' }

  -- stylish {{{
  use { 'glepnir/dashboard-nvim', requires = 'nvim-telescope/telescope.nvim' }
  -- use { 'itchyny/lightline.vim', requires = { 'mengelbrecht/lightline-bufferline', 'maximbaz/lightline-ale' } }
  use { 'hoob3rt/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
  use { 'romgrk/barbar.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
  use 'Yggdroot/indentLine'
  use { 'euclidianAce/BetterLua.vim', ft = 'lua' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'Luxed/ayu-vim', as = 'ayu' }
  -- }}}
end)
