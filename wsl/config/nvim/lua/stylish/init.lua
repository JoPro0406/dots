local h = require('helpful')

local colorscheme = 'xresources'

if colorscheme == 'ayu' then
  h.setglobal({ ayucolor = 'dark' })
  h.setoption({ background = 'dark' })

  vim.api.nvim_exec(
    [[
  augroup custom_colors
    autocmd!
    autocmd ColorScheme ayu call ayu#hi('MatchParen', 'markup', 'gutter_normal', 'bold')
  augroup END
  ]], true
  )

  vim.api.nvim_exec('colorscheme ayu', true)
elseif colorscheme == 'xresources' then
  local xres = require('xresources')
  
  xres.highlight('MatchParen', { fg = xres.red, bg = xres.grey1, style = 'bold' })
end
