-- https://github.com/b3nj5m1n/kommentary/
local h = require('helpful')

vim.g.kommentary_create_default_mappings = false

h.map('n', '<leader>c<space>', '<Plug>kommentary_line_default')
h.map('n', '<leader>c', '<Plug>kommentary_motion_default')
h.map('v', '<leader>c', '<Plug>kommentary_visual_default')
h.map('n', '<leader>cc', '<Plug>kommentary_line_increase')
h.map('v', '<leader>cc', '<Plug>kommentary_visual_increase')
h.map('n', '<leader>cu', '<Plug>kommentary_line_decrease')
h.map('n', '<leader>cu', '<Plug>kommentary_visual_decrease')

require('kommentary.config').configure_language("default", {
    prefer_single_line_comments = true,
    use_consistent_indentation = true,
    ignore_whitespace = true,
})
