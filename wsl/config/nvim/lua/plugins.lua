-- https://github.com/wbthomason/packer.nvim/
local install_path = vim.fn.stdpath('data') .. '/site/packer/opt/packer.nvim' -- {{{
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system(
    { 'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path }
  )
  vim.api.nvim_exec('packadd packer.nvim', true)
end -- }}}

vim.api.nvim_exec([[packadd packer.nvim]], true) -- {{{
return require('packer').startup {
  function(use)
    -- Packer can manage itself as an optional plugin
    use { 'wbthomason/packer.nvim', opt = true }
    use 'tweekmonster/startuptime.vim'

    -- lsp etc {{{
    use { 'neovim/nvim-lspconfig', config = [[require('magic.lspconfig')]] }
    use 'simrat39/rust-tools.nvim'
    use 'glepnir/lspsaga.nvim'
    use { 'hrsh7th/nvim-compe', config = [[require('magic.compe')]] }
    use { 'norcalli/snippets.nvim', config = [[require('magic.snippets')]] }
    use 'onsails/lspkind-nvim'
    use {
      'mhartington/formatter.nvim',
      cmd = { 'Format', 'FormatWrite' },
      event = 'BufWritePre',
      config = [[require('magic.formatter')]],
    }
    -- }}}

    -- language plugins {{{
    use { 'LnL7/vim-nix', ft = 'nix' }
    use {
      'iamcco/markdown-preview.nvim',
      run = ':call mkdp#util#install()',
      ft = 'markdown',
    }
    use { 'rust-lang/rust.vim', ft = 'rust' }
    use { 'olical/fennel.vim', ft = 'fennel' }
    use { 'pprovost/vim-ps1', ft = { 'Powershell', 'ps1' } }
    use { 'neovimhaskell/haskell-vim', ft = 'haskell' }
    -- }}}

    -- quality of life {{{
    use {
      'nvim-telescope/telescope.nvim',
      requires = {
        'nvim-lua/popup.nvim',
        'nvim-lua/plenary.nvim',
        'kyazdani42/nvim-web-devicons',
      },
      config = [[require('qol.telescope')]],
    }
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      requires = {
        'nvim-treesitter/playground',
        'windwp/nvim-ts-autotag',
        '~/src/nvim-ts-rainbow',
      },
      config = [[require('qol.treesitter')]],
    }
    use 'glepnir/prodoc.nvim'
    use { 'windwp/nvim-autopairs', config = [[require('qol.autopairs')]] }
    use {
      'https://github.com/windwp/nvim-spectre',
      requires = {
        'nvim-lua/plenary.nvim',
        'nvim-lua/popup.nvim',
        'kyazdani42/nvim-web-devicons',
      },
    }
    use 'editorconfig/editorconfig-vim'
    use { 'godlygeek/tabular', cmd = { 'Tab', 'Tabularize' } }
    use 'folke/which-key.nvim'
    use 'tpope/vim-surround'
    use {
      'lewis6991/gitsigns.nvim',
      requires = { 'nvim-lua/plenary.nvim' },
      config = [[require('gitsigns').setup { numhl = true }]],
    }
    use 'tpope/vim-repeat'
    use {
      'timakro/vim-yadi',
      config = [[vim.api.nvim_exec('autocmd BufRead * DetectIndent', true)]],
    }
    use { 'b3nj5m1n/kommentary', config = [[require('qol.kommentary')]] }
    use {
      'TimUntersberger/neogit',
      requires = { 'nvim-lua/plenary.nvim' },
      cmd = 'Neogit',
    }
    use {
      'kyazdani42/nvim-tree.lua',
      requires = { 'kyazdani42/nvim-web-devicons' },
      cmd = { 'NvimTreeToggle', 'NvimTreeRefresh', 'NvimTreeFindFile' },
      config = [[require('qol.nvimtree')]],
    }
    -- }}}

    -- stylish {{{
    use { 'glepnir/dashboard-nvim', config = [[require('stylish.dashboard')]] }
    use {
      'glepnir/galaxyline.nvim',
      requires = { { 'kyazdani42/nvim-web-devicons', opt = true } },
      config = [[require('stylish.galaxyline')]],
    }
    use {
      'akinsho/nvim-bufferline.lua',
      requires = { 'kyazdani42/nvim-web-devicons' },
      config = [[require('stylish.bufferline')]],
    }
    use {
      'lukas-reineke/indent-blankline.nvim',
      branch = 'lua',
      config = [[require('stylish.indentblankline')]],
    }
    use {
      'norcalli/nvim-colorizer.lua',
      config = [[require('colorizer').setup { '*', '!packer' }]],
    }
    use { "kdav5758/TrueZen.nvim", config = [[require('stylish.truezen')]] }
    use { 'karb94/neoscroll.nvim', config = [[require('neoscroll').setup()]] }
    use { 'Luxed/ayu-vim', as = 'ayu' }
    use 'nekonako/xresources-nvim'
    -- }}}
  end,
  -- config = { profile = { enable = true } },
}
-- }}}
