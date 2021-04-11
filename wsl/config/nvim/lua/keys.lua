local hv = require('helpful.vim')

hv.setglobal({ mapleader = ' ' })

hv.noremap('', '<M-r>', ':nohl<CR><C-l>')

hv.noremap('t', '<Esc>', '<C-\\><C-n>')

hv.noremap('n', '<Leader>', ":<c-u>WhichKey '<Space>'<CR>", { silent = true })
hv.noremap(
  'v', '<Leader>', ":<c-u>WhichKeyVisual '<Space>'<CR>", { silent = true }
)

hv.noremap('n', '<Leader>bn', ':bnext<CR>', { silent = true })
hv.noremap('n', '<Leader>bp', ':bprevious<CR>', { silent = true })
hv.noremap('n', '<Leader>bw', ':bwipeout<CR>', { silent = true })

hv.noremap('n', '<Leader>G', ':Goyo<CR>', { silent = true })

hv.noremap('n', '<M-F>', ':Format<CR>', { silent = false })

hv.noremap('n', '<Leader>fh', ':DashboardFindHistory<CR>', { silent = true })
hv.noremap('n', '<Leader>ff', ':DashboardFindFile<CR>', { silent = true })
hv.noremap(
  'n', '<Leader>tc', ':DashboardChangeColorscheme<CR>', { silent = true }
)
hv.noremap('n', '<Leader>fa', ':DashboardFindWord<CR>', { silent = true })
hv.noremap('n', '<Leader>fm', ':DashboardJumpMarks<CR>', { silent = true })
hv.noremap('n', '<Leader>nf', ':DashboardNewFile<CR>', { silent = true })
hv.noremap(
  'n', '<Leader>fb', ":Telescope buffers show_all_buffers=true<CR>",
  { silent = true }
)
