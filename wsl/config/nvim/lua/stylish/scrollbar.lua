local hv = require('helpful.vim')

vim.api.nvim_exec(
  [[
augroup scrollbar_nvim
  autocmd!
  autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
  autocmd WinLeave,FocusLost             * silent! lua require('scrollbar').clear()
  autocmd BufLeave                    * silent! lua require('scrollbar').clear()
augroup end
]], true
)

hv.setglobal {
  scrollbar_max_size = 10,
  scrollbar_min_size = 3,
  scrollbar_right_offset = 1,
  scrollbar_shape = { head = '█', body = '█', tail = '█' },
  scrollbar_highlight = { head = 'Special', body = 'Special', tail = 'Special' },
  scrollbar_excluded_filetypes = { 'NvimTree', 'dashboard' },
}
