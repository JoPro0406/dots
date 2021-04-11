local hv = require('helpful.vim')

require'compe'.setup {
  enabled = true,
  autocomplete = true,
  debug = false,
  min_length = 1,
  preselect = 'enable',
  throttle_time = 80,
  source_timeout = 200,
  incomplete_delay = 400,
  max_abbr_width = 100,
  max_kind_width = 100,
  max_menu_width = 100,
  documentation = true,
  source = {
    buffer = true,
    path = true,
    tags = true,
    spell = true,
    nvim_lsp = true,
    nvim_lua = true,
    vsnip = true,
  },
}

-- helpers {{{
local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
  local col = vim.fn.col('.') - 1
  if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
    return true
  else
    return false
  end
end
-- }}}

Completion = {}
-- vsnip tab completion {{{
Completion.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t '<C-n>'
  elseif vim.fn.call('vsnip#available', { 1 }) == 1 then
    return t '<Plug>(vsnip-expand-or-jump)'
  elseif check_back_space() then
    return t '<Tab>'
  else
    return vim.fn['compe#complete']()
  end
end
Completion.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t '<C-p>'
  elseif vim.fn.call('vsnip#jumpable', { -1 }) == 1 then
    return t '<Plug>(vsnip-jump-prev)'
  else
    return t '<S-Tab>'
  end
end
-- }}}

-- autopairs <CR> support {{{
local npairs = require('nvim-autopairs')
vim.g.completion_confirm_key = ''
Completion.autopairs_completion = function()
  if vim.fn.pumvisible() ~= 0 then
    if vim.fn.complete_info()['selected'] ~= -1 then
      vim.fn['compe#confirm']()
      return npairs.esc('')
    else
      vim.api.nvim_select_popupmenu_item(0, false, false, {})
      vim.fn['compe#confirm']()
      return npairs.esc('<c-n>')
    end
  else
    return npairs.check_break_line_char()
  end
end
-- }}}

hv.map('s', '<Tab>', 'v:lua.Completion.tab_complete()', { expr = true })
hv.map('i', '<Tab>', 'v:lua.Completion.tab_complete()', { expr = true })
hv.map('s', '<S-Tab>', 'v:lua.Completion.s_tab_complete()', { expr = true })
hv.map('i', '<S-Tab>', 'v:lua.Completion.s_tab_complete()', { expr = true })

hv.noremap('i', '<C-Space>', 'compe#complete()', { expr = true })
hv.noremap(
  'i', '<CR>', 'v:lua.Completion.autopairs_completion()', { expr = true }
)
hv.noremap('i', '<C-e>', "compe#close('<C-e>')", { expr = true })
hv.noremap('i', '<C-f>', "compe#scroll({ 'delta': +4 })", { expr = true })
hv.noremap('i', '<C-d>', "compe#scroll({ 'delta': -4 })", { expr = true })

require('lspkind').init()
