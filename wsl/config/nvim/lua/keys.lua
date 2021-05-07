local h = require('helpful')
local wk = require('which-key')

local function cmd(c)
  return '<cmd>' .. c .. '<cr>'
end

wk.setup {}
wk.register(
  {
    b = {
      name = 'buffers',
      h = { cmd 'bprevious', 'previous buffer' },
      l = { cmd 'bnext', 'next buffer' },
      w = { cmd 'bwipeout', 'wipeout open buffer' },
      f = { cmd 'Telescope buffers show_all_buffers=true',
            'open buffer browser' },
    },
    m = {
      name = 'code/lsp actions',
      c = { cmd 'Lspsaga code_action', 'code actions' },
      d = { cmd 'Lspsaga preview_definition', 'show definition' },
      f = { cmd 'Lspsaga lsp_finder', 'find definition' },
      h = { cmd 'Lspsaga hover_doc', 'show documentation' },
      s = { cmd 'Lspsaga signature_help', 'signature help' },
      r = { cmd 'Lspsaga rename', 'rename' },
      a = { cmd 'Lspsaga show_cursor_diagnostics', 'cursor diagnostics' },
      A = { cmd 'Lspsaga show_line_diagnostics', 'line diagnostics' },
      g = { vim.lsp.buf.definition, 'go to definition' },
      i = { vim.lsp.buf.implementation, 'show implementation' },
      F = { vim.lsp.buf.formatting, 'format file with lsp formatter' },
    },
    f = {
      name = 'files',
      f = { cmd 'Telescope find_files', 'file finder' },
      b = { cmd 'Telescope file_browser', 'file browser' },
      a = { cmd 'Telescope live_grep', 'grep files' },
    },
  }, { prefix = '<leader>' }
)

h.noremap('', '<M-r>', ':nohl<CR><C-l>')

h.noremap('t', '<Esc>', '<C-\\><C-n>')

h.noremap('n', '<M-F>', ':Format<CR>', { silent = false })
