local install_path = vim.fn.stdpath('data') .. '/site/packer/opt/packer.nvim' -- {{{
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({ 'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path })
  vim.api.nvim_exec('packadd packer.nvim', true)
end -- }}}

vim.api.nvim_exec([[packadd packer.nvim]], true) -- {{{
-- LuaFormatter off
return require('packer').startup(
  function()
    -- Packer can manage itself as an optional plugin
    use {
      'wbthomason/packer.nvim',
      opt = true
    }
    use 'tweekmonster/startuptime.vim'

    -- lsp etc {{{
    use {
      'windwp/nvim-autopairs',
      config = [[require('nvim-autopairs').setup { check_line_pair = false }]],
    }
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'nvim-lua/lsp_extensions.nvim'
    use 'hrsh7th/nvim-compe'
    use {
      'hrsh7th/vim-vsnip',
      requires = { 'hrsh7th/vim-vsnip-integ' },
    }
    use 'onsails/lspkind-nvim'
    use {
      'mhartington/formatter.nvim',
      cmd = { 'Format', 'FormatWrite' },
      event = 'BufWritePre',
      config = [[require('magic.formatter')]],
    }
    -- }}}

    -- language plugins {{{
    use {
      'LnL7/vim-nix',
      ft = 'nix',
    }
    use {
      'iamcco/markdown-preview.nvim',
      run = ':call mkdp#util#install()',
      ft = 'markdown',
    }
    use {
      'rust-lang/rust.vim',
      ft = 'rust',
    }
    use {
      'olical/fennel.vim',
      ft = 'fennel',
    }
    use {
      'pprovost/vim-ps1',
      ft = { 'Powershell', 'ps1' }
    }
    -- }}}

    -- quality of life {{{
    use 'editorconfig/editorconfig-vim'
    use {
      'godlygeek/tabular',
      cmd = { 'Tab', 'Tabularize' },
    }
    use 'liuchengxu/vim-which-key'
    use 'tpope/vim-surround'
    use {
      'lewis6991/gitsigns.nvim',
      requires = { 'nvim-lua/plenary.nvim' },
      config = [[require('gitsigns').setup { numhl = true }]],
    }
    use 'tpope/vim-repeat'
    use {
      'timakro/vim-yadi',
      config = [[vim.api.nvim_exec('autocmd BufRead * DetectIndent', true)]]
    }
    use {
      'b3nj5m1n/kommentary',
      config = [[require('qol.kommentary')]],
    }
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
    use {
      'nvim-telescope/telescope.nvim',
      requires = {
        'nvim-lua/popup.nvim',
        'nvim-lua/plenary.nvim',
        'kyazdani42/nvim-web-devicons',
      },
      config = [[require('stylish.telescope')]],
    }
    use {
      'glepnir/dashboard-nvim',
      config = [[require('stylish.dashboard')]],
    }
    use {
      'glepnir/galaxyline.nvim',
      requires = { { 'kyazdani42/nvim-web-devicons', opt = true } },
      config = [[require('stylish.galaxyline')]],
    }
    use {
      'akinsho/nvim-bufferline.lua',
      requires = { 'kyazdani42/nvim-web-devicons' } ,
      config = [[require('stylish.bufferline')]],
    }
    use {
      'lukas-reineke/indent-blankline.nvim',
      branch = 'lua',
      config = [[require('stylish.indentblankline')]]
    }
    use {
      'norcalli/nvim-colorizer.lua',
      config = [[require('colorizer').setup { '*', '!packer' }]],
    }
    use {
      'junegunn/goyo.vim',
      requires = { { 'junegunn/limelight.vim', cmd = { 'Limelight', 'Goyo' } } },
      cmd = 'Goyo',
    }
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      requires = { '~/src/nvim-ts-rainbow' },
      config = [[require('stylish.treesitter')]],
    }
    use {
      'karb94/neoscroll.nvim',
      config = [[require('neoscroll').setup()]],
    }
    use {
      'Xuyuanp/scrollbar.nvim',
      config = [[require('stylish.scrollbar')]],
    }
    use {
      'wfxr/minimap.vim',
      run = 'cargo install --locked code-minimap',
      config = [[require('stylish.minimap')]],
    }
    use {
      'Luxed/ayu-vim',
      as = 'ayu',
    }
    -- }}}
  end
)
-- LuaFormatter on
-- }}}
