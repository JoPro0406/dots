let mapleader="\<Space>"

nnoremap <silent> <Leader> :WhichKey '<Space>'<CR>

nnoremap <silent> <Leader>l :bnext<CR>
nnoremap <silent> <Leader>h :bprevious<CR>
nnoremap <silent> <Leader>w :bwipeout<CR>

nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fm :DashboardJumpMarks<CR>
nnoremap <silent> <Leader>nf :DashboardNewFile<CR>
if g:dashboard_default_executive == 'fzf'
  nnoremap <silent> <Leader>fb :Buffers<CR>
elseif g:dashboard_default_executive == 'telescope'
  nnoremap <silent> <Leader>fb <cmd>lua require('telescope.builtin').buffers({ show_all_buffers = true })<CR>
endif
