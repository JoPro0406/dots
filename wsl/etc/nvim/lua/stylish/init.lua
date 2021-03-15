local hv = require('helpful.vim')

hv.setglobal({
  ayucolor = 'dark',
  ayu_italic_comment = 1,
})
hv.setoption({ background = 'dark' })

vim.cmd('colorscheme ayu')

require('stylish.dashboard')
require('stylish.barbar')
require('stylish.lualine')
require('stylish.treesitter')
require('stylish.telescope')
