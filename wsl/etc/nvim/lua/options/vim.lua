local hv = require('helpful.vim')

vim.cmd('filetype plugin indent on')
vim.cmd('syntax enable')

local indent = 2
hv.setoption({ -- {{{
  scrolloff      = 3,
  mouse          = 'a',
  termguicolors  = true,

  laststatus     = 2,
  showtabline    = 2,
  signcolumn     = 'number',
  number         = true,
  cursorline     = true,
  showmode       = false,

  foldmethod     = 'marker',
  foldlevel      = 99,

  wrap           = true,
  linebreak      = true,
  breakindent    = true,
  breakindentopt = 'shift:2',
  showbreak      = '> ',

  tabstop        = indent,
  softtabstop    = indent,
  shiftwidth     = indent,
  smartindent    = true,
  copyindent     = false,
  expandtab      = true,

  incsearch      = true,
  hlsearch       = true,
  ignorecase     = true,
  smartcase      = true,

  updatetime     = 100,
  backspace      = 'indent,eol,start',
  splitbelow     = true,
  splitright     = true,
})
-- reassign in buffer and window scope because nvim
vim.bo.tabstop        = indent
vim.bo.softtabstop    = indent
vim.bo.shiftwidth     = indent
vim.bo.smartindent    = true
vim.bo.expandtab      = true
vim.wo.signcolumn     = 'number'
vim.wo.number         = true
vim.wo.cursorline     = true
vim.wo.wrap           = true
vim.wo.linebreak      = true
vim.wo.breakindent    = true
vim.wo.breakindentopt = 'shift:2'
-- }}}

hv.setglobal({ -- {{{
  netrw_banner       = 0,
  netrw_liststyle    = 3,
  netrw_browse_split = 4,
  netrw_winsize      = 20,
  netrw_home         = vim.fn.stdpath('data')
}) -- }}}
