-- https://github.com/hrsh7th/nvim-compe/
local h = require('helpful')

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
    snippets_nvim = true,
  },
}

-- helpers {{{
local function t(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local function check_back_space()
  local col = vim.fn.col('.') - 1
  if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
    return true
  else
    return false
  end
end
-- }}}

-- snippets.nvim tab completion {{{
_G.Utils.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t '<C-n>'
  elseif require('snippets').has_active_snippet() then
    return t "<cmd>lua require('snippets').expand_or_advance()<CR>"
  elseif check_back_space() then
    return t '<Tab>'
  else
    return vim.fn['compe#complete']()
  end
end
_G.Utils.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t '<C-p>'
  elseif require('snippets').has_active_snippet() then
    return t "<cmd>lua require('snippets').advance_snippet(-1)<CR>"
  else
    return t '<S-Tab>'
  end
end
-- }}}

h.map('s', '<Tab>', 'v:lua.Utils.tab_complete()', { expr = true })
h.map('i', '<Tab>', 'v:lua.Utils.tab_complete()', { expr = true })
h.map('s', '<S-Tab>', 'v:lua.Utils.s_tab_complete()', { expr = true })
h.map('i', '<S-Tab>', 'v:lua.Utils.s_tab_complete()', { expr = true })

h.noremap('i', '<C-Space>', 'compe#complete()', { expr = true })
h.noremap('i', '<C-e>', "compe#close('<C-e>')", { expr = true })
h.noremap('i', '<C-f>', "compe#scroll({ 'delta': +4 })", { expr = true })
h.noremap('i', '<C-d>', "compe#scroll({ 'delta': -4 })", { expr = true })

require('lspkind').init()
