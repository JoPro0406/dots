local h = require('helpful')

h.setglobal({ ayucolor = 'dark' })
h.setoption({ background = 'dark' })

vim.api.nvim_exec('colorscheme ayu', true)
