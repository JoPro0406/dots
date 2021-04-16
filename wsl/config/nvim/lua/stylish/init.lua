local h = require('helpful')

h.setglobal({ ayucolor = 'dark' })
h.setoption({ background = 'dark' })

vim.api.nvim_exec('colorscheme ayu', true)

_G.toggle_darkmode = function()
  local theme, even_colors, odd_colors

  theme = 'ayu_' .. vim.fn['ayu#get_style']()

  if vim.o.background == 'dark' then
    vim.o.background = 'light'
    even_colors = { fg = '#e7e8e9', bg = '#e1e1e2' }
    odd_colors = { fg = '#e1e1e2', bg = '#e7e8e9' }
  else
    vim.o.background = 'dark'
    even_colors = { fg = '#1b2733', bg = '#304357' }
    odd_colors = { fg = '#304357', bg = '#1b2733' }
  end

  if package.loaded['lualine'] then
    require('lualine').setup { options = { theme = theme } }
  end

  if package.loaded['indent_guides'] then
    require('indent_guides').setup {
      even_colors = even_colors,
      odd_colors = odd_colors,
    }
    vim.api.nvim_exec('IndentGuidesEnable', true)
  end

  if package.loaded['galaxyline'] then
    require('galaxyline').init_colorscheme()
  end
end
