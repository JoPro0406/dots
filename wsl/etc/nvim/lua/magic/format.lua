require('formatter').setup {
  logging = false,
  filetype = {
    javascript = {
      function()
        return {
          exe = 'prettier',
          args = { '--stdin-filepath', vim.api.nvim_buf_get_name(0) },
          stdin = true,
        }
      end,
    },
    lua = {
      function()
        return { exe = 'lua-format', stdin = true }
      end,
    },
    rust = {
      function()
        return { exe = 'rustfmt', args = { '--emit=stdout' }, stdin = true }
      end,
    },
  },
}

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.rs,*.lua FormatWrite
augroup END
]], true
)
