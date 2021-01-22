vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use { 'wbthomason/packer.nvim', opt = true }

  use 'norcalli/nvim-colorizer.lua'
  use 'jiangmiao/auto-pairs'
  use 'Yggdroot/indentLine'
  use 'godlygeek/tabular'
  use 'liuchengxu/vim-which-key'
  use 'tpope/vim-surround'

  use 'tpope/vim-fugitive'
  use 'mhinz/vim-signify'
  use 'preservim/nerdcommenter'
  use { 'nvim-telescope/telescope.nvim', requires = {{ 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' }} }

  use { 'ayu-theme/ayu-vim', as = 'ayu' }
end)
