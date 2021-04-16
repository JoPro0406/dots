-- https://github.com/mhartington/formatter.nvim/
local function prettier()
  return {
    exe = 'prettier',
    args = { '--stdin-filepath', vim.api.nvim_buf_get_name(0) },
    stdin = true,
  }
end

local function lua_format()
  return { exe = 'lua-format', stdin = true }
end

local function rustfmt()
  return { exe = 'rustfmt', args = { '--emit=stdout' }, stdin = true }
end

require('formatter').setup {
  logging = false,
  filetype = {
    javascript = { prettier },
    json = { prettier },
    lua = { lua_format },
    rust = { rustfmt },
  },
}
