local hv = require('helpful.vim')

vim.cmd('filetype plugin indent on')
vim.cmd('syntax enable')

local indent = 2
hv.setoption({
  scrolloff     = 1,
  cursorline    = true,
  mouse         = 'a',
  number        = true,
  wrap          = false,
  signcolumn    = 'yes',
  termguicolors = true,
  laststatus    = 2,
  showtabline   = 2,
  showmode      = false,
  foldmethod    = 'indent',
  foldlevel     = 99,

  tabstop       = indent,
  softtabstop   = indent,
  shiftwidth    = indent,
  smartindent   = true,
  copyindent    = false,
  expandtab     = true,

  incsearch     = true,
  hlsearch      = true,
  ignorecase    = true,
  smartcase     = true,

  updatetime    = 100,
  backspace     = 'indent,eol,start',
})
-- reassign in buffer and window scope because nvim
vim.bo.tabstop     = indent
vim.bo.softtabstop = indent
vim.bo.shiftwidth  = indent
vim.bo.smartindent = true
vim.bo.expandtab   = true
vim.wo.signcolumn  = 'yes'
vim.wo.number      = true
vim.wo.wrap        = false


hv.setglobal({
  netrw_banner = 0,
  netrw_liststyle = 3,
  netrw_browse_split = 4,
  netrw_winsize = 20,
})
