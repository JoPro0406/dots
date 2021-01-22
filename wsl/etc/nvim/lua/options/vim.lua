vim.cmd('filetype plugin indent on')
vim.cmd('syntax enable')

vim.g.ayucolor = 'dark'
vim.cmd('colorscheme ayu')

local indent = 2
local options = {
  scrolloff     = 1,
  cursorline    = true,
  mouse         = 'a',
  number        = true,
  signcolumn    = 'yes',
  termguicolors = true,
  laststatus    = 2,
  showtabline   = 2,
  showmode      = false,
  
  tabstop       = indent,
  softtabstop   = indent,
  shiftwidth    = indent,
  copyindent    = false,
  expandtab     = true,

  incsearch     = true,
  hlsearch      = true,
  ignorecase    = true,
  smartcase     = true,

  backspace     = 'indent,eol,start',
}
for opt, val in pairs(options) do
  vim.o[opt] = val
end

vim.cmd('set tabstop=' .. indent)
vim.cmd('set softtabstop=' .. indent)
vim.cmd('set shiftwidth=' .. indent)
vim.cmd('set expandtab')

local globals = {
  netrw_banner = 0,
  netrw_liststyle = 3,
  netrw_browse_split = 4,
  netrw_winsize = 20,
}
for glob, val in pairs(globals) do
  vim.g[glob] = val
end
