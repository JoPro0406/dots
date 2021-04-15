local hv = require('helpful.vim')

vim.g.kommentary_create_default_mappings = false

hv.map('n', '<leader>cc', '<Plug>kommentary_line_default')
hv.map('n', '<leader>c', '<Plug>kommentary_motion_default')
hv.map('v', '<leader>c', '<Plug>kommentary_visual_default')
