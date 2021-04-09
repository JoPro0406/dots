local hv = require('helpful.vim')

hv.setoption({ completeopt = 'menuone,noinsert,noselect' })

vim.api.nvim_exec([[autocmd! User GoyoEnter Limelight]], true)
vim.api.nvim_exec([[autocmd! User GoyoLeave Limelight!]], true)
