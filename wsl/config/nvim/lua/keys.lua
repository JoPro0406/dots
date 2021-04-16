local h = require('helpful')

h.setglobal({ mapleader = ' ' })

h.noremap('', '<M-r>', ':nohl<CR><C-l>')

h.noremap('t', '<Esc>', '<C-\\><C-n>')

h.noremap('n', '<Leader>', ":<c-u>WhichKey '<Space>'<CR>", { silent = true })
h.noremap(
  'v', '<Leader>', ":<c-u>WhichKeyVisual '<Space>'<CR>", { silent = true }
)

h.noremap('n', '<Leader>bn', ':bnext<CR>', { silent = true })
h.noremap('n', '<Leader>bp', ':bprevious<CR>', { silent = true })
h.noremap('n', '<Leader>bw', ':bwipeout<CR>', { silent = true })

h.noremap('n', '<Leader>G', ':Goyo<CR>', { silent = true })

h.noremap('n', '<M-F>', ':Format<CR>', { silent = false })

h.noremap('n', '<Leader>fh', ':DashboardFindHistory<CR>', { silent = true })
h.noremap('n', '<Leader>ff', ':DashboardFindFile<CR>', { silent = true })
h.noremap(
  'n', '<Leader>tc', ':DashboardChangeColorscheme<CR>', { silent = true }
)
h.noremap('n', '<Leader>fa', ':DashboardFindWord<CR>', { silent = true })
h.noremap('n', '<Leader>fm', ':DashboardJumpMarks<CR>', { silent = true })
h.noremap('n', '<Leader>nf', ':DashboardNewFile<CR>', { silent = true })
h.noremap(
  'n', '<Leader>fb', ":Telescope buffers show_all_buffers=true<CR>",
  { silent = true }
)
