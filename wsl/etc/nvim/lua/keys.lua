local hv = require('helpful.vim')

hv.setglobal({ mapleader = ' ' })

hv.noremap('n', '<Leader>', ":<c-u>WhichKey '<Space>'<CR>", { silent = true })
hv.noremap('v', '<Leader>', ":<c-u>WhichKeyVisual '<Space>'<CR>", { silent = true })

hv.noremap('n', '<Leader>l', ':bnext<CR>')
hv.noremap('n', '<Leader>h', ':bprevious<CR>')
hv.noremap('n', '<Leader>q', ':bwipeout<CR>')
hv.noremap('n', '<Leader>w', ':w<CR>')

hv.noremap('n', '<Leader>G', ':Goyo<CR>')

hv.noremap('n', '<Leader>fh', ':DashboardFindHistory<CR>', { silent = true })
hv.noremap('n', '<Leader>ff', ':DashboardFindFile<CR>', { silent = true })
hv.noremap('n', '<Leader>tc', ':DashboardChangeColorscheme<CR>', { silent = true })
hv.noremap('n', '<Leader>fa', ':DashboardFindWord<CR>', { silent = true })
hv.noremap('n', '<Leader>fm', ':DashboardJumpMarks<CR>', { silent = true })
hv.noremap('n', '<Leader>nf', ':DashboardNewFile<CR>', { silent = true })
hv.noremap('n', '<Leader>fb', "<cmd>lua require('telescope.builtin').buffers({ show_all_buffers = true  })<CR>", { silent = true })

hv.map('i', '<Tab>', '<Plug>(completion_smart_tab)')
hv.map('i', '<S-Tab>', '<Plug>(completion_smart_s_tab)')
