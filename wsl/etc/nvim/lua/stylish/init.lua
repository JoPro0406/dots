local hv = require('helpful.vim')

hv.setglobal({ ayucolor = 'dark', ayu_italic_comment = 1 })
hv.setoption({ background = 'dark' })

vim.api.nvim_exec('colorscheme ayu', true)

require('stylish.dashboard')
require('stylish.barbar')
require('stylish.lualine')
require('stylish.treesitter')
require('stylish.telescope')
require('stylish.indentguides')
