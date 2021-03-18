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
    path = true,
    buffer = true,
    calc = true,
    vsnip = true,
    nvim_lsp = true,
    nvim_lua = true,
    spell = true,
    tags = true,
    snippets_nvim = true,
    treesitter = true,
  },
}

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

-- snippets.nvim tab completion {{{
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t '<C-n>'
  elseif require('snippets').has_active_snippet() == true then
    return t "<cmd>lua return require('snippets').expand_or_advance(1)<CR>"
  elseif check_back_space() then
    return t '<Tab>'
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t '<C-p>'
  elseif require('snippets').has_active_snippet() == true then
    return t "<cmd>lua return require('snippets').advance_snippet(-1)<CR>"
  else
    return t '<S-Tab>'
  end
end
-- }}}

hv.map('s', '<Tab>', 'v:lua.tab_complete()', { expr = true })
hv.map('i', '<Tab>', 'v:lua.tab_complete()', { expr = true })
hv.map('s', '<S-Tab>', 'v:lua.s_tab_complete()', { expr = true })
hv.map('i', '<S-Tab>', 'v:lua.s_tab_complete()', { expr = true })

hv.noremap('i', '<C-Space>', 'compe#complete()', { expr = true })
hv.noremap('i', '<CR>', "compe#confirm('<CR>')", { expr = true })
hv.noremap('i', '<C-e>', "'compe#close('<C-e>')", { expr = true })
hv.noremap('i', '<C-f>', "compe#scroll({ 'delta': +4 })", { expr = true })
hv.noremap('i', '<C-d>', "compe#scroll({ 'delta': -4 })", { expr = true })

require('lspkind').init()
