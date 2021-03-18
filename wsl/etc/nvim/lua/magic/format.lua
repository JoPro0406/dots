require('formatter').setup(
  {
    logging = false,
    filetype = {
      lua = {
        function()
          return { exe = 'lua-format', stdin = true }
        end,
      },
    },
  }
)

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.rs,*.lua FormatWrite
augroup END
]], true
)
