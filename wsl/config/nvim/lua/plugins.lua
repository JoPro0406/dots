local install_path = vim.fn.stdpath('data') .. '/site/packer/opt/packer.nvim' -- {{{
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_exec(
    '!git clone https://github.com/wbthomason/packer.nvim ' .. install_path,
    true
  )
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
      config = function() require('nvim-autopairs').setup { check_line_pair = false } end
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
      config = function() require('magic.formatter') end,
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
    -- use 'tpope/vim-fugitive' -- idk if i need this lol
    use {
      'lewis6991/gitsigns.nvim',
      requires = { 'nvim-lua/plenary.nvim' },
      config = function() require('gitsigns').setup { numhl = true } end,
    }
    use 'tpope/vim-repeat'
    use {
      'timakro/vim-yadi',
      config = function() vim.api.nvim_exec([[autocmd BufRead * DetectIndent]], true) end
    }
    -- use {
      -- 'preservim/nerdcommenter',
      -- config = function() require('qol.nerdcommenter') end,
    -- }
    use {
      'b3nj5m1n/kommentary',
      config = function() require('qol.kommentary') end,
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
      config = function () require('qol.nvimtree') end,
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
      config = function() require('stylish.telescope') end,
    }
    use {
      'glepnir/dashboard-nvim',
      config = function() require('stylish.dashboard') end,
    }
    use {
      'glepnir/galaxyline.nvim',
      requires = { { 'kyazdani42/nvim-web-devicons', opt = true } },
      config = function() require('stylish.galaxyline') end,
    }
    use {
      'akinsho/nvim-bufferline.lua',
      requires = { 'kyazdani42/nvim-web-devicons' } ,
      config = function() require('stylish.bufferline') end,
    }
    use {
      'lukas-reineke/indent-blankline.nvim',
      branch = 'lua',
      config = function() require('stylish.indentblankline') end
    }
    use {
      'norcalli/nvim-colorizer.lua',
      config = function() require('colorizer').setup { '*', '!packer' } end,
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
      config = function() require('stylish.treesitter') end,
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
