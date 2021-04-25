-- https://github.com/windwp/nvim-autopairs/
local h = require('helpful')
local npairs = require('nvim-autopairs')

npairs.setup { check_line_pair = false }

vim.g.completion_confirm_key = ''
_G.Utils.autopairs_completion = function()
  if vim.fn.pumvisible() ~= 0 then
    if vim.fn.complete_info()['selected'] ~= -1 then
      return vim.fn['compe#confirm'](npairs.esc('<cr>'))
    else
      return npairs.esc('<cr>')
    end
  else
    return npairs.autopairs_cr()
  end
end

h.noremap(
  'i', '<CR>', 'v:lua.Utils.autopairs_completion()', { expr = true }
)
