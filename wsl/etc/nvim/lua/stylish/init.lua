local hv = require('helpful.vim')

hv.setglobal({ ayucolor = 'dark', ayu_italic_comment = 1 })
hv.setoption({ background = 'dark' })

vim.api.nvim_exec('colorscheme ayu', true)

_G.toggle_darkmode = function()
  if vim.o.background == 'dark' then
    vim.o.background = 'light'
    require('lualine').setup { options = { theme = 'ayu_light' } }
    require('indent_guides').setup {
      even_colors = { fg = '#e7e8e9', bg = '#e1e1e2' },
      odd_colors = { fg = '#e1e1e2', bg = '#e7e8e9' },
    }
    vim.api.nvim_exec('IndentGuidesEnable', true)
  else
    vim.o.background = 'dark'
    require('lualine').setup { options = { theme = 'ayu_' .. vim.g.ayucolor } }
    require('indent_guides').setup {
      even_colors = { fg = '#1b2733', bg = '#304357' },
      odd_colors = { fg = '#304357', bg = '#1b2733' },
    }
    vim.api.nvim_exec('IndentGuidesEnable', true)
  end
end
